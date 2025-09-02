--1. Tạo thủ tục để cập nhật các trường điểm tổng kết học phần, điểm hệ chữ, điểm hệ 4 của 1 sinh viên 
--cho 1 học phần cụ thể với mã sinh viên và mã học phần, mã lớp học phần, điểm quá trình, điểm thi kết thúc học phần là tham số đầu vào

use QuanLyDiemTruongDaiHoc

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

