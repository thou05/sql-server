Created: 202509021801

Tags: 

- view: câu sql trả về table tạm được đặt tên
- function: hàm trả về giá trị
- store procedure: hàm void, gọi thì mới chạy
- trigger: đoạn code tự động được thực thi khi table bị "giày vò" - chỉnh sửa
- transaction

---
## Variable
- kiểu dữ liệu: data type là cách ta lưu loại dữ liệu nào đó
- 1 ngôn ngữ lập trình sẽ hỗ trợ nhiều loại dữ liệu khác nhau
- khi lập trình trong sqlserver, vì câu lệnh sẽ nằm trên nhiều dòng -> mình cần nhắc tool này 1 câu: đừng nhìn lệnh riêng lẻ (nhiều dòng) mà hãy nhìn nguyên cụm lệnh mới có ý nghĩa (BATCH) 
	- ta dùng lệnh `GO` để gom 1 cụm lệnh lập trình lại thành 1 đơn vị có ý nghĩa

- KHAI BÁO BIẾN
	```sql
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
	
	```


## view
- khi có nhiều câu lệnh sql select phức tạp, hay ta cần viết lại nhiều lần 1 câu select nào đó, ta đặt cho câu lệnh sql select này 1 cái tên sau này muốn dùng lại câu sql select này chỉ gọi tên ra là được
- 1 câu lệnh select ~~ 1 table đc trả về khi chạy
- 1 câu lệnh select -- đặt cho nó 1 cái tên --- 1 table đc trả về khi chạy
- nếu ta muốn nhìn table này, chạy lại lệnh select này, chỉ việc `select * from ten-đã-đặt`

```sql
use Northwind
select * from Employees

go --tách lệnh

create view vw_londonEmployees
as
select * from Employees where City = 'London'

go --tách lệnh

select * from vw_londonEmployees
```

## stored procedure and function
- hàm: 1 nhóm câu lệnh được đặt 1 tên, nhóm lệnh này làm 1 việc gì đó, dùng để re-use
- trong lập trình có 2 loại hàm
	- hàm void: ko trả về 1 giá trị nào cả
	- hàm có trả về 1 giá trị (chỉ 1): lệnh return
- R.DBMS (CSDL dựa trên relation/table) ta có 2 loại hàm y chang
	- stored procedure    ~~~ void
	- function ~~~ return
### stored procedure
- PROCEDURE làm đc nhiều việc khác
	- viết 1 proc in ra danh sách các nhân viên quê ở đâu đó, đâu đó đưa vào proc
	- insert data
### function
- lưu ý: 
	- hàm trả vè giá trị thì được quyền dùng trong các câu lệnh khác 
	- gọi hàm mà ko kèm thêm gì khác, đừng hỏi tại sao màn hình ko thấy gì
		- nhiệm vụ của hàm là trả về giá trị, in đ là việc của hàm, việc khác cũng thế
		- in xem hàm xử lý ra sao, thì phải kèm lệnh in và lệnh gọi hàm

- hàm dùng xử lí trả về kq, phải dùng kq trong lệnh nào đó
- bắt buộc phải có `dbo.ten`

## Trigger
- là 1 hàm void, ko nhận tham số, ko trả về
- nó làm nhiệm vụ gác cổng 1 table nào đó
- nếu có sự thay đổi data trong table, nó sẽ tự động được thực thi, chạy
- dùng để kiểm tra/đảm bảo tính toàn vẹn, nhất quán, consistency của dữ liệu
- hoặc dùng để kiểm tra các ràng buộc mà sql chuẩn không thể cung cấp đủ
- chỉ tự gọi liên quan đến table nào đó và liên quan đến 3 lệnh: insert, update, delete
- gắn chặt với 1 table, nhưng ko cấm code của nó can thiệp table
- 1 table ko ép phải có trigger


- LƯU Ý khi chơi trigger
	- db engine sẽ tự tạo ra 2 table `ảo` lúc runtime liên quan đến trigger
		- câu lệnh insert vào table -> db e. tạo ra 1 table ảo tên inserted chứa record vừa đưa vào từ câu lệnh insert
		- câu lệnh delete vào table -> db e. tạo ra 1 table ảo tên deleted chứa những dòng vừa bị xóa
		- câu lệnh update even set name = 'đổi tên'  -> db e. tạo 2 table ảo 
			- inserted chứa value mới đưa vào
			- deleted chứa value cũ/bị ghi đè


- liên quan đến table, có 2 loại trigger cơ bản
	- chặn trc khi dữ liệu đưa vào table, lúc này dữ liệu mới vào inserted (before)
	- chặn sau khi đã vào inserted và đồng thời vào luôn table rồi (after)

-----
## References
1.
