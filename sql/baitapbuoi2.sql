select * from Khoa

use QuanLyDiemTruongDaiHoc
--------
-- sample
--1. tạo view hiển thị bảng điểm gồn tất cả các học phần mà sinh viên có mã 201200026 đã học, 
--bao gồm điểm số và thêm trạng thái là "đạt" nếu điểm >= 4 và "học lại" nếu ngược lại

CREATE VIEW DanhSachHocPhanDaHoc AS
SELECT lhpsv.MaHocPhan, hp.TenHocPhan ,MAX(DiemTKHP) AS diemtongket,
	CASE
		WHEN MAX(DiemTKHP) >= 4 THEN N'Đạt' ELSE N'Học lại'
	END AS trangthai
FROM LopHocPhan_SinhVien lhpsv 
JOIN HocPhan hp ON lhpsv.MaHocPhan = hp.MaHocPhan
WHERE MaSinhVien='201200026'
GROUP BY lhpsv.MaHocPhan, hp.TenHocPhan

select * from DanhSachHocPhanDaHoc

--2. Tạo view hiển thị tất cả các học phần mà sinh viên có mã 201200026 cần học 
--(gồm các học cần cần học lại và chưa học)
CREATE VIEW DanhSachHocPhanCanHoc AS
SELECT hpctdt.MaSinhVien, hpctdt.TenHocPhan, diem.diemtongket
FROM 
--danh sách các học phần thuộc chương trình đào tạo của sinh viên
(SELECT sv.MaSinhVien, hp.MaHocPhan, hp.TenHocPhan
FROM SinhVien sv
JOIN ChuongTrinhDaoTao ctdt ON sv.MaCTDT = ctdt.MaCTDT
JOIN CTDT_HocPhan ctdthp ON ctdthp.MaCTDT = ctdt.MaCTDT
JOIN HocPhan hp ON hp.MaHocPhan = ctdthp.MaHocPhan
WHERE sv.MaSinhVien = '201200026') hpctdt
LEFT JOIN
(--danh sách các học phần sinh viên đã học
SELECT lhpsv.MaHocPhan ,MAX(DiemTKHP) AS diemtongket
FROM LopHocPhan_SinhVien lhpsv 
JOIN HocPhan hp ON lhpsv.MaHocPhan = hp.MaHocPhan
WHERE MaSinhVien='201200026'
GROUP BY lhpsv.MaHocPhan) diem
ON hpctdt.MaHocPhan = diem.MaHocPhan
WHERE diemtongket < 4 OR diemtongket IS NULL

select * from DanhSachHocPhanCanHoc


-----

--1
create view dssv
as
select SinhVien.MaSinhVien, SinhVien.Ten, SinhVien.NgaySinh, Lop.TenLop
from SinhVien join Lop on SinhVien.MaLop = Lop.MaLop

select * from dssv

select * from HocPhan
select * from LopHocPhan_SinhVien
select * from SinhVien

--2
create view svvoima
as 
select lhpsv.MaHocPhan, TenHocPhan, DiemQuaTrinh, DiemThiKTHP, MAX(DiemTKHP) as diemtongket, DiemHeChu
from LopHocPhan_SinhVien lhpsv
join LopHocPhan on LopHocPhan.MaHocPhan = lhpsv.MaHocPhan
join HocPhan on LopHocPhan.MaHocPhan = HocPhan.MaHocPhan
join SinhVien on lhpsv.MaSinhVien = SinhVien.MaSinhVien
where SinhVien.MaSinhVien = '171202737'
group by lhpsv.MaHocPhan, TenHocPhan, DiemQuaTrinh, DiemThiKTHP, DiemHeChu

select * from svvoima

--5
create view giangvientatca
as select GiangVien.Ten, Khoa.TenKhoa, HocPhan.TenHocPhan
from GiangVien 
join BoMon on GiangVien.MaBoMon = BoMon.MaBoMon
join Khoa on BoMon.MaKhoa = Khoa.MaKhoa
join HocPhan on BoMon.MaBoMon = HocPhan.MaBoMon

select * from giangvientatca


--3

select SinhVien.MaSinhVien, SinhVien.HoDem, SinhVien.Ten, HocPhan.TenHocPhan, MAX(LopHocPhan_SinhVien.DiemTKHP) as diem
from SinhVien
join LopHocPhan_SinhVien on SinhVien.MaSinhVien = LopHocPhan_SinhVien.MaSinhVien
join LopHocPhan on LopHocPhan.MaLopHocPhan = LopHocPhan_SinhVien.MaLopHocPhan
join HocPhan on HocPhan.MaHocPhan = LopHocPhan.MaHocPhan
where TenHocPhan like N'Cơ sở dư liệu%'
group by SinhVien.MaSinhVien, SinhVien.HoDem, SinhVien.Ten,HocPhan.TenHocPhan, LopHocPhan.MaHocPhan
having max(DiemTKHP) < 4

--
create view svnohp
as
select SinhVien.MaSinhVien, SinhVien.HoDem, SinhVien.Ten, lhp.MaHocPhan, MAX(LopHocPhan_SinhVien.DiemTKHP) as diem
from SinhVien
join LopHocPhan_SinhVien on SinhVien.MaSinhVien = LopHocPhan_SinhVien.MaSinhVien
join LopHocPhan lhp on lhp.MaLopHocPhan = LopHocPhan_SinhVien.MaLopHocPhan
where TenLopHocPhan like N'Cơ sở dư liệu%'
group by SinhVien.MaSinhVien, SinhVien.HoDem, SinhVien.Ten, LHP.MaHocPhan
having max(DiemTKHP) < 4


--4


--6

create view lophpmang










