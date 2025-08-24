use QuanLyDiemTruongDaiHoc
exec sp_adduser N03, NO3user 

grant select, update on sinhvien to NO3user

REVOKE update on sinhvien FROM NO3user

exec sp_addrole staff

grant select, update on sinhvien to staff

exec sp_addrolemember staff, NO3user

-- Tạo login A, B
-- Tạo user userA, userB tương ứng với login A, B
-- Gán quyền select, update cho userA trên bảng KhachHang của CSDL QLBanHang, A
--có quyền trao quyền này cho người khác
-- Đăng nhập A để kiểm tra
-- Từ A, Trao quyền select cho userB trên bảng KhachHang của CSDL QLBanHang
-- Đăng nhập B để kiểm tra

exec sp_addlogin A, 123
exec sp_addlogin B, 123

use QuanLyDiemTruongDaiHoc
exec sp_adduser A, Auser 
exec sp_adduser B, Buser 


grant select, update on sinhvien to Auser with grant option

