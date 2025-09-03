--1. Tạo thủ tục để cập nhật các trường điểm tổng kết học phần, điểm hệ chữ, điểm hệ 4 của 1 sinh viên 
--cho 1 học phần cụ thể với mã sinh viên và mã học phần, mã lớp học phần, điểm quá trình, điểm thi kết thúc học phần là tham số đầu vào

use QuanLyDiemTruongDaiHoc
go

CREATE PROCEDURE CapNhatDiem(
	@maSinhVien varchar(10),
	@maHocPhan varchar(25),
	@maLopHocPhan varchar(25),
	@diemQuaTrinh float,
	@diemThiKTHP float)
AS
BEGIN
	DECLARE @trongSoDiemQuaTrinh float,
			@trongSoDiemThiKTHP float,
			@diemTKHP float,
			@diemHe4 float,
			@diemHeChu varchar(10)
	SELECT @trongSoDiemQuaTrinh = TrongSoDiemQuaTrinh, @trongSoDiemThiKTHP = TrongSoDiemThiKTHP
	FROM HocPhan WHERE MaHocPhan = @maHocPhan

	Set @diemTKHP = ROUND(@diemQuaTrinh * @trongSoDiemQuaTrinh + @diemThiKTHP * @trongSoDiemThiKTHP, 1)

	Set @diemHe4 = CASE
						WHEN @diemTKHP < 2 THEN 0
						WHEN @diemTKHP < 4 THEN 0.5
						WHEN @diemTKHP < 4.5 THEN 1
						WHEN @diemTKHP < 5.5 THEN 1.5
						WHEN @diemTKHP < 6 THEN 2
						WHEN @diemTKHP < 7 THEN 2.5
						WHEN @diemTKHP < 8 THEN 3
						WHEN @diemTKHP < 8.5 THEN 3.5
						WHEN @diemTKHP < 9.5 THEN 3.8
						ELSE 4
					END;
	Set @diemHeChu = CASE
						WHEN @diemTKHP < 2 THEN 'F'
						WHEN @diemTKHP < 4 THEN 'F+'
						WHEN @diemTKHP < 4.5 THEN 'D'
						WHEN @diemTKHP < 5.5 THEN 'D+'
						WHEN @diemTKHP < 6 THEN 'C'
						WHEN @diemTKHP < 7 THEN 'C+'
						WHEN @diemTKHP < 8 THEN 'B'
						WHEN @diemTKHP < 8.5 THEN 'B+'
						WHEN @diemTKHP < 9.5 THEN 'A'
						ELSE 'A+'
					END;
	UPDATE LopHocPhan_SinhVien
	SET
		DiemQuaTrinh = @diemQuaTrinh,
		DiemThiKTHP = @diemThiKTHP,
		DiemHeChu = @diemHeChu,
		DiemTKHP = @diemTKHP
		WHERE MaSinhVien = @maSinhVien and MaHocPhan = @maHocPhan and MaLopHocPhan = @maLopHocPhan
	END
go
--2. tạo thủ tục để tính số tín chỉ và điểm tích lũy cho 1 sinh viên
--với mã sinh viên là tham số đầu vào
--thử nghiệm msv '212606016'

create proc TinhHocPhanTichLuy
	@maSinhVien varchar(10), 
	@tinChiTichLuy int output,
	@diemTBTL float output
as
begin
	select @tinChiTichLuy = SUM(SoTinChi) from
	(select LopHocPhan_SinhVien.MaHocPhan, SoTinChi
	from LopHocPhan_SinhVien
	join HocPhan on LopHocPhan_SinhVien.MaHocPhan = HocPhan.MaHocPhan
	where MaSinhVien = @maSinhVien and DiemTKHP >= 4
	group by LopHocPhan_SinhVien.MaHocPhan, MaSinhVien, SoTinChi) bang1

	select @diemTBTL=SUM(diemHocPhan*SoTinChi)/SUM(SoTinChi)
	from
	(select MAX(DiemTKHP) as diemHocPhan, SoTinChi
	from LopHocPhan_SinhVien
	join HocPhan on LopHocPhan_SinhVien.MaHocPhan = HocPhan.MaHocPhan
	where MaSinhVien = @maSinhVien and DiemTKHP >= 4
	group by LopHocPhan_SinhVien.MaHocPhan, MaSinhVien, SoTinChi) bang2
end
go

drop proc TinhHocPhanTichLuy

declare @t int, @d float
exec TinhHocPhanTichLuy '212606016', @t output, @d output
print @t
print @d


select * from LopHocPhan_SinhVien where MaSinhVien = '212606016'


select LopHocPhan_SinhVien.MaHocPhan, SoTinChi
from LopHocPhan_SinhVien
join HocPhan on LopHocPhan_SinhVien.MaHocPhan = HocPhan.MaHocPhan
where MaSinhVien = '212606016' and DiemTKHP >= 4
group by LopHocPhan_SinhVien.MaHocPhan, MaSinhVien, SoTinChi

select MAX(DiemHeChu) as diemHocPhan, SoTinChi
from LopHocPhan_SinhVien
join HocPhan on LopHocPhan_SinhVien.MaHocPhan = HocPhan.MaHocPhan
where MaSinhVien = '212606016' and DiemTKHP >= 4
group by LopHocPhan_SinhVien.MaHocPhan, MaSinhVien, SoTinChi
go

-- tạo hàm có đầu ra là bảng dữ liệu
/*3. tạo hàm hiển thị danh sách điểm của từng lớp gồm msv, họ đệm, tên,
điểm quá trình, điểm thi, điểm tổng kết học phần, điểm hệ chữ trong 
1 lớp học phần cụ thể với mã lớp học phần, mã học phần là tham số đầu vào.
thử nghiệm với mã học phần 'IE3.002.3' và mã lớp học phần '1-2-22-QT02'
*/
create function DiemLopHocPhan (@maHocPhan varchar(25), @maLopHocPhan varchar(25))
returns table
as
return
	select lhpsv.MaSinhVien, sv.HoDem, sv.Ten, DiemQuaTrinh, DiemTKHP, DiemHeChu
	from LopHocPhan_SinhVien lhpsv join SinhVien sv on lhpsv.MaSinhVien = sv.MaSinhVien
	where MaHocPhan = @maHocPhan and MaLopHocPhan = @maLopHocPhan

go
select * from dbo.DiemLopHocPhan('IE3.002.3','1-2-22-QT02')

go
--4. đưa ra số học sinh xuất sắc của 1 lớp trong 1 kỳ học 
--với mã lớp và kì học là tham số đầu vào
create function SoSVXuatSac (@maLop varchar(25), @hocKy int)
returns int
begin
	declare @ssv int
	select @ssv = COUNT(*) from
	(select sv.MaSinhVien, sv.HoDem, sv.Ten, ROUND(SUM(lhpsv.DiemTKHP*SoTinChi)/SUM(SoTinChi), 1) as diemTB
	from LopHocPhan_SinhVien lhpsv
		join LopHocPhan lhp on lhpsv.MaHocPhan = lhp.MaHocPhan and lhpsv.MaLopHocPhan = lhp.MaLopHocPhan
		join HocPhan hp on hp.MaHocPhan = lhp.MaHocPhan
		join SinhVien sv on sv.MaSinhVien = lhpsv.MaSinhVien
	where sv.MaLop = @maLop and HocKy = @hocKy and DotHoc = 1
	group by sv.MaSinhVien, sv.HoDem, sv.Ten
	having SUM(lhpsv.DiemTKHP*SoTinChi)/SUM(SoTinChi) >= 8.5) bangphu
	return @ssv
end
go

select dbo.SoSVXuatSac('K62.CNTTVA2', 2)
--3.6 ko dc vi k co he 4
--cau nay chua juan lam can fix

--	
SELECT 
    sv.MaSinhVien, 
    sv.HoDem, 
    sv.Ten,
	ROUND(SUM(lhpsv.DiemTKHP * hp.SoTinChi) / SUM(hp.SoTinChi), 1) AS diemTB10,
    ROUND(SUM(
        CASE 
            WHEN lhpsv.DiemTKHP < 2 THEN 0
            WHEN lhpsv.DiemTKHP < 4 THEN 0.5
            WHEN lhpsv.DiemTKHP < 4.5 THEN 1
            WHEN lhpsv.DiemTKHP < 5.5 THEN 1.5
            WHEN lhpsv.DiemTKHP < 6 THEN 2
            WHEN lhpsv.DiemTKHP < 7 THEN 2.5
            WHEN lhpsv.DiemTKHP < 8 THEN 3
            WHEN lhpsv.DiemTKHP < 8.5 THEN 3.5
            WHEN lhpsv.DiemTKHP < 9.5 THEN 3.8
            ELSE 4
        END * hp.SoTinChi
    ) / SUM(hp.SoTinChi), 1) AS diemTB4  -- Hệ 4
FROM LopHocPhan_SinhVien lhpsv
JOIN LopHocPhan lhp 
    ON lhpsv.MaHocPhan = lhp.MaHocPhan 
   AND lhpsv.MaLopHocPhan = lhp.MaLopHocPhan
JOIN HocPhan hp 
    ON hp.MaHocPhan = lhp.MaHocPhan
JOIN SinhVien sv 
    ON sv.MaSinhVien = lhpsv.MaSinhVien
WHERE sv.MaLop = 'K62.CNTTVA2' 
  AND lhp.HocKy = 2 
  AND lhp.DotHoc = 1
GROUP BY sv.MaSinhVien, sv.HoDem, sv.Ten
HAVING ROUND(SUM(
        CASE 
            WHEN lhpsv.DiemTKHP < 2 THEN 0
            WHEN lhpsv.DiemTKHP < 4 THEN 0.5
            WHEN lhpsv.DiemTKHP < 4.5 THEN 1
            WHEN lhpsv.DiemTKHP < 5.5 THEN 1.5
            WHEN lhpsv.DiemTKHP < 6 THEN 2
            WHEN lhpsv.DiemTKHP < 7 THEN 2.5
            WHEN lhpsv.DiemTKHP < 8 THEN 3
            WHEN lhpsv.DiemTKHP < 8.5 THEN 3.5
            WHEN lhpsv.DiemTKHP < 9.5 THEN 3.8
            ELSE 4
        END * hp.SoTinChi
    ) / SUM(hp.SoTinChi), 1) >= 3.6;
--
