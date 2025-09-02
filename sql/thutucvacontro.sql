-- 10!

declare @t INT = 1, @i INT = 1
while @i < 10
BEGIN 
	set @t = @t * @i
	set @i = @i + 1
END
print @t

--
use danhsachhocsinh

Declare hs cursor for select mahs from DSHS
Open hs
Declare @mahs nvarchar(5), @dtb float
Fetch next from hs into @mahs
While (@@fetch_status = 0)
begin
select @dtb=round((toan*2+ly*2+hoa+ly)/6,2) from diem where
MAHS=@mahs
update dshs set dtbc=@dtb where MAHS=@mahs
Fetch next from hs into @mahs
end
Close hs; Deallocate hs

--

DECLARE cs CURSOR FOR SELECT MAHS FROM DSHS
OPEN cs
DECLARE @mahs nvarchar(5), @dtb float, @toan float, @ly float, @van float, @hoa
float, @dtn float
FETCH NEXT FROM cs into @mahs
WHILE @@FETCH_STATUS=0
BEGIN
declare @xl nchar(25)
select @toan=toan, @van=van, @hoa=hoa, @ly=ly,
@dtb=round((toan*2+van*2+ly+hoa)/6,2) from DIEM where MAHS=@mahs
set @dtn=@toan
if @dtn>@van set @dtn=@van
if @dtn>@hoa set @dtn=@hoa
if @dtn>@ly set @dtn=@ly
IF (@dtb>=8 AND @dtn>=6.5) SET @xl=N'Giỏi'
ELSE IF (@dtb>=7 AND @dtn>=5) SET @xl=N'Khá'
ELSE SET @xl=N'Trung bình'
Update dshs set XepLoai=@xl where MAHS=@mahs
FETCH NEXT FROM cs into @mahs
END
CLOSE cs
DEALLOCATE cs
--

declare cs cursor for select @mahs, @van

------
CREATE PROCEDURE DiemTrungBinh @mahs nvarchar(5), @dtb float
output
AS
begin
select @dtb=round((toan*2+van*2+ly+hoa)/6, 2) from diem where
MAHS=@mahs
End

--Gọi thủ tục:
declare @tb float
exec DiemTrungBinh '00001', @tb output
print @tb


use QuanLyDiemTruongDaiHoc



--1Tạo thủ tục để cập nhật các trường điểm quá trình, điểm thi kết thúc học phần, Điểm tổng kết học phần, điểm hệ chữ, điểm hệ 4, của một sinh viên 
--trong bảng LopHocPhan_SinhVien cho một học phần cụ thể với mã sinh viên và mã học phần, mã lớp học phần, điểm quá trình, điểm thi kết thúc học phần là tham số đầu vào.
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
			@diemHeChu varchar(10)
	SELECT @trongSoDiemQuaTrinh = TrongSoDiemQuaTrinh, @trongSoDiemThiKTHP = TrongSoDiemThiKTHP
	FROM HocPhan WHERE MaHocPhan = @maHocPhan

	Set @diemTKHP = ROUND(@diemQuaTrinh * @trongSoDiemQuaTrinh + @diemThiKTHP * @trongSoDiemThiKTHP, 1)

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



--2.Tạo thủ tục để tính điểm trung bình cho một sinh viên theo từng học kỳ với mã sinh viên, kỳ học là tham số đầu vào.
--2.
create procedure tinhdiemtb @masv nvarchar(10), @hocki INT
as 
begin
	select 
	from LopHocPhan_SinhVien lhpsv 
	JOIN LopHocPhan lhp ON lhpsv.

--3.Tạo thủ tục để tính số tín chỉ và điểm tích lũy cho một sinh viên với mã sinh viên là tham số đầu vào.