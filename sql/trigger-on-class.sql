use QLBanSach
go
create or alter trigger  ThanhTien on [dbo].[tChiTietHDB]
 for insert, update as
 begin
 declare @sohdb nvarchar(10), @dongia money, @thanhtien 
money, @masach nvarchar(10)
 select @sohdb=sohdb, @masach=masach from inserted
 select @dongia=dongiaban from tsach where MaSach=@masach
 update tChiTietHDB set ThanhTien=SLban*@dongia where  
sohdb=@sohdb and MaSach=@masach
 End
 
 insert into tChiTietHDB(SoHDB, MaSach, SLBan) values 
('HDB01', 'S03',10)
 insert into tChiTietHDB(SoHDB, MaSach, SLBan) values 
('HDB01', 'S05',10)

go
--
use QuanLyDiemTruongDaiHocV2
go

create or alter trigger tr_NhapDiem on lophocphan_sinhvien
after insert
as 
begin
	declare @diemqt float, @diemThiKTHP float, @trongSoQuaTrinh float, @trongSoKTHP float, 
			@maHocPhan varchar(25), @maLopHocPhan varchar(25), @maSV varchar(10), @diemtkhp float, @lanHoc int

	select @diemqt = DiemQuaTrinh, @diemThiKTHP = DiemThiKTHP, @maHocPhan = MaHocPhan, 
			@maLopHocPhan = MaLopHocPhan, @maSV = MaSinhVien
	from inserted

	select @trongSoQuaTrinh = TrongSoDiemQuaTrinh, @trongSoKTHP = TrongSoDiemThiKTHP
	from HocPhan
	where MaHocPhan = @maHocPhan

	update LopHocPhan_SinhVien set DiemTKHP = @diemqt * @trongSoQuaTrinh + @diemThiKTHP * @trongSoKTHP
	where MaHocPhan = @maHocPhan and MaLopHocPhan = @maLopHocPhan and MaSinhVien = @maSV
	
	
	update LopHocPhan_SinhVien set 
		DiemHeChu = case 
					WHEN DiemTKHP < 2 THEN 'F'
					WHEN DiemTKHP < 4 THEN 'F+'
					WHEN DiemTKHP < 4.5 THEN 'D'
					WHEN DiemTKHP < 5.5 THEN 'D+'
					WHEN DiemTKHP < 6 THEN 'C'
					WHEN DiemTKHP < 7 THEN 'C+'
					WHEN DiemTKHP < 8 THEN 'B'
					WHEN DiemTKHP < 8.5 THEN 'B+'
					WHEN DiemTKHP < 9.5 THEN 'A'
					ELSE 'A+'
					END,
			DiemHe4 = case 
						 WHEN DiemTKHP < 2 THEN 0
							WHEN DiemTKHP < 4 THEN 0.5
							WHEN DiemTKHP < 4.5 THEN 1
							WHEN DiemTKHP < 5.5 THEN 1.5
							WHEN DiemTKHP < 6 THEN 2
							WHEN DiemTKHP < 7 THEN 2.5
							WHEN DiemTKHP < 8 THEN 3
							WHEN DiemTKHP < 8.5 THEN 3.5
							WHEN DiemTKHP < 9.5 THEN 3.8
							ELSE 4
					END
	where MaHocPhan = @maHocPhan and MaLopHocPhan = @maLopHocPhan and MaSinhVien = @maSV
	
	--select @lanHoc = COUNT(*) from LopHocPhan_SinhVien where MaSinhVien = @maSV and MaHocPhan = @maHocPhan 
	--cach 2
	select @lanHoc = MAX(LanHoc) + 1 from LopHocPhan_SinhVien where MaSinhVien = @maSV and MaHocPhan = @maHocPhan 
	update LopHocPhan_SinhVien set LanHoc = @lanHoc 
	where MaHocPhan = @maHocPhan and MaLopHocPhan = @maLopHocPhan and MaSinhVien = @maSV

	/* code gpt
	update LopHocPhan_SinhVien set LanHoc = (
			select count(*) 
			from LopHocPhan_SinhVien
			where MaHocPhan = @maHocPhan 
			  and MaSinhVien = @maSV
		)
		where MaHocPhan = @maHocPhan 
		  and MaLopHocPhan = @maLopHocPhan
		  and MaSinhVien = @maSV;
	*/

end

insert into LopHocPhan_SinhVien values('IT3.004.3', '1-2-24-QT02', '212604007', 6,7,null, null,null, null)
insert into LopHocPhan_SinhVien values('IT1.217.3', '1-2-22-N02', '212604007', 6,7, null, null,null, null)

select * from LopHocPhan_SinhVien where MaSinhVien = '212604007'

delete from LopHocPhan_SinhVien where MaSinhVien = '212604007' and MaHocPhan = 'IT1.217.3' and MaLopHocPhan = '1-2-22-N02'


-- ôn tập sql