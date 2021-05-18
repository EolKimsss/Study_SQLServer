create or alter function ufn_getage(@byear int)
returns int
as
begin
	declare @age int
	set @age = (year(getdate()) - @byear) + 1
	return(@age)
end
go

select userid,name,
	   birthYear, dbo.ufn_getage(birthYear) as '����',
	   addr,height, dbo.ufn_getinch(height) as '��ġ' 
  from usertbl