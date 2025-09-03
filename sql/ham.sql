--1. Tạo hàm đưa ra danh sách sinh viên trong một lớp học cụ thể với 
--mã lớp là  tham số đầu vào. 

use QuanLyDiemTruongDaiHocV2
go

create function fn_DanhSachSV(@maLop varchar(25))
returns table
as
return
	select MaSinhVien, HoDem, Ten, MaLop
	from  SinhVien sv 
	where MaLop = @maLop
go
select * from SinhVien
select * from dbo.fn_DanhSachSV('K62.CNTTVA2')
go
--2. Tạo hàm hiển thị danh sách sinh viên sinh viên theo từng chương trình đào tạo 
--cụ thể (mã chương trình đào tạo là tham số đầu vào). 
create function fn_DSSVTheoCTDT(@maCTDT varchar(25))
returns table
as
return
	select MaSinhVien, HoDem, Ten
	from SinhVien
	where MaCTDT = @maCTDT
go
select * from dbo.fn_DSSVTheoCTDT('7.48.02.01')

--3. Tạo hàm hiển thị danh sách điểm của từng lớp gồm mã sinh viên, họ đệm, tên, 
--điểm quá trình, điểm thi, điểm tổng kết học phần, điểm hệ chữ trong một lớp 
--học phần cụ thể với mã lớp học phần, mã học phần là tham số đầu vào. 
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
--4. Tạo hàm để truy xuất danh sách các sinh viên có điểm trung bình thấp hơn 
--điểm trung bình của cả lớp với mã lớp, năm học, kỳ học là tham số đầu vào
create function fn_SVDiemThapHonDiemTB(@maLop varchar(25), @namHoc varchar(20), @kyHoc INT)
returns table
as
return
	with diemSV as
		(select sv.MaSinhVien, HoDem, Ten, AVG(cast(lhpsv.DiemTKHP as float)) as diemTB
		from LopHocPhan_SinhVien lhpsv
		join LopHocPhan lhp on lhpsv.MaHocPhan = lhp.MaHocPhan
		join SinhVien sv on lhpsv.MaSinhVien = sv.MaSinhVien
		where lhp.MaLopHocPhan = @maLop and NamHoc = @namHoc and HocKy = @kyHoc
		group by sv.MaSinhVien, HoDem, Ten),
		
	diemLop as
		(select AVG(diemTB) as diemTBLop from diemSV)

	select MaSinhVien, HoDem, Ten, diemTB, diemTBLop
	from diemSV, diemLop
	where diemTB < diemTBLop
go
select * from dbo.fn_SVDiemThapHonDiemTB('1-2-22-QT02', '2022-2023', 2)
select * from LopHocPhan
drop function dbo.fn_SVDiemThapHonDiemTB
select * from LopHocPhan_SinhVien
go
--5. Đưa ra bảng điểm của sinh viên với mã sinh viên là tham số đầu vào và mỗi 
--học phần chỉ đưa ra một thông tin điểm cho lần học có điểm cao nhất (điểm 
--TKHP) 

create function fn_BangDiemSV(@maSinhVien varchar(10))
returns table
as
return
	select hp.MaHocPhan,  MAX(DiemHe4) as maxHe4
	from LopHocPhan_SinhVien lhpsv
	join HocPhan hp on hp.MaHocPhan = lhpsv.MaHocPhan
	where DiemTKHP >= 4 and MaSinhVien = @maSinhVien
	group by hp.MaHocPhan 

go

select * from fn_BangDiemSV('201200026')


--6. Tạo hàm đưa ra danh sách xếp hạng các sinh viên có điểm hệ 4 từ 3.2 trở lên 
--của một khoa trong một học kỳ với mã khoa, kỳ học, năm học là tham số đầu 
--vào  

create function fn_DanhSachXepHang(@maKhoa varchar(10), @kyHoc INT, @namHoc varchar(20))
returns table 
as
return
	select 
	from SinhVien sv
	join LopHocPhan_SinhVien lhpsv on sv.MaSinhVien = lhpsv.MaSinhVien

go
select 

--

create function fn_XepHangSinhVien
(
    @MaKhoa nvarchar(10),
    @KyHoc int,
    @NamHoc int
)
returns table
as
return
(
    select sv.MaSinhVien, sv.HoDem, sv.Ten,
           round(sum(lhpsv.DiemTKHP * lhp.SoTinChi) * 4.0 / sum(lhp.SoTinChi) / 10.0, 2) as DiemHe4
    from SinhVien sv
    join LopHocPhan_SinhVien lhpsv on sv.MaSinhVien = lhpsv.MaSinhVien
    join LopHocPhan lhp on lhpsv.MaHocPhan = lhp.MaHocPhan
    join MonHoc mh on lhp.MaMonHoc = mh.MaMonHoc
    join Khoa k on sv.MaKhoa = k.MaKhoa
    where sv.MaKhoa = @MaKhoa
      and lhp.KyHoc = @KyHoc
      and lhp.NamHoc = @NamHoc
      and lhpsv.DiemTKHP = (
          select max(DiemTKHP)
          from LopHocPhan_SinhVien
          where MaSinhVien = lhpsv.MaSinhVien
            and MaHocPhan = lhpsv.MaHocPhan
      )
    group by sv.MaSinhVien, sv.HoDem, sv.Ten
    having round(sum(lhpsv.DiemTKHP * lhp.SoTinChi) * 4.0 / sum(lhp.SoTinChi) / 10.0, 2) >= 3.2
);