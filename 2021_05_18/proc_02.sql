

create proc usp_users1
	@username nvarchar(10)
as
	select userid,name,birthyear from usertbl
	 where name = @username
go

exec usp_users1 

create proc usp_users2
	@userbirthyear INT,
	@userHeight INT
as
	select userid,name,birthyear,height,mdate from usertbl
	where birthyear >= @userbirthyear
	  and height >= @userHeight
go

exec usp_users2 1970,175

create proc usp_user3
	@lastname nvarchar(2),
	@outcount int output
as
	select @outcount = count(*) from userTbl
	 where name like @lastname + '%'
go

select count(*) from userTbl where name like '��' + '%'

declare @myvalue int
exec usp_user3 '��',@myvalue output
print concat('�达 ���� ���� ����� ���� : ' , @myvalue)