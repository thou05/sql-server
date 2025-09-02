GO
DECLARE @msg1 as nvarchar(30)

DECLARE @msg nvarchar(30) = N'Xin chào - weo come to T-SQL'

--in biến có 2 lệnh
PRINT @msg  --IN RA KQ BÊN CỬA SỔ CONSOLE GIỐNG LẬP TRÌNH
SELECT @msg  --IN RA KẾT QUẢ DƯỚI DẠNG TABLE

DECLARE @yob INT 
--gán giá trị cho biến
set @yob = 2003
select @yob = 2003 --select dùng 2 cách: gán gtri cho biến, in gtri của biến

PRINT @yob

IF @yob >= 2003
	begin
		print 'Hey lover'
		print 'hey hey hey'
	end
else 
	print 'hey gey'
GO
----

use Northwind
select * from Employees

go --tách lệnh

create view vw_londonEmployees
as
select * from Employees where City = 'London'

go --tách lệnh

select * from vw_londonEmployees

select * from [Category Sales for 1997]
go
--

--viết hàm in ra câu chào
create database dbdesign_programming

use dbdesign_programming
go

create proc pr_hello_1
as
	print N'xin chao - weo come to my own first procedure'
go

--prodecure - thuc thi
pr_hello_1
go
dbo.pr_hello_1
execute pr_hello_1
exec pr_hello_1
go


--function 
create function fn_hello()
returns nvarchar(30)
as
begin
	return N'xin xin chao'
end
go

select dbo.fn_hello() 
select GETDATE()

-- ham proc - đổi từ độ C -> F
go
create proc pr_c2f
@cDegree float 
as
begin
	declare @fDegree float = @cDegree * 1.8 + 32
	print @fDegree
end
go

--use - vì có tham số, cần truyền vào
exec pr_c2f @cDegree = 37
go
exec pr_c2f 37
go
---
create function fn_c2f(@cDegree float)
returns float
as
begin
	declare @fDegree float = @cDegree * 1.8 + 32
	return @fDegree
end
go

--sử dụng hàm, hàm phải viết kèm lệnh khác
print N'37 độ C là ' + CAST(dbo.fn_c2f(36) AS VARCHAR(10)) + N' độ F'

--viết 1 proc in ra danh sách các nhân viên quê ở đâu đó
use Northwind
go
create proc pr_employeeListByCity
@city nvarchar(30)
as
	select * from Employees where City = @city
go

exec pr_employeeListByCity 'Redmond'
exec pr_employeeListByCity 'London'

go

use dbdesign_programming
create table Event(
	ID int IDENTITY PRIMARY KEY,
	Name nvarchar(50) not null
)

insert into Event values (N'Tháng tư là lời nói dối')
select * from Event
go

create proc pr_insertEvent
@name nvarchar(50)
as 
	insert into Event values(@name)
go

exec pr_insertEvent N'inset nek'
exec pr_insertEvent N'thao le xinh gai'
