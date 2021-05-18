create or alter proc usp_isyoung
	@username nvarchar(10)
as
	declare @byear int

	select @byear = birthyear from usertbl
	 where name = @username

	 if(@byear >= 1980)
	 begin
		print '¾ÆÁ÷ Àþ½À´Ï´Ù';
	 end
	 else
	 begin
		print '´ÄÀ¸¼Ì³×¿ä';
	 end
go

exec usp_isyoung 'ÀÌ½Â±â'
