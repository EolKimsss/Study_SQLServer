use sqldb;
go
create or alter proc usp_zodiac
	@username nvarchar(10)

as
	declare @byear int
	declare @zodiac nvarchar(3)
	select @byear = birthYear from usertbl
	 where @username = name

	 set @zodiac =
		 case
			when (@byear%12 = 0) then '¿ø¼şÀÌ'
			when (@byear%12 = 1) then '´ß'
			when (@byear%12 = 2) then '°³'
			when (@byear%12 = 3) then 'µÅÁö'
			when (@byear%12 = 4) then 'Áã'
			when (@byear%12 = 5) then '¼Ò'
			when (@byear%12 = 6) then 'È£¶ûÀÌ'
			when (@byear%12 = 7) then 'Åä³¢'
			when (@byear%12 = 8) then '¿ë'
			when (@byear%12 = 9) then '¹ì'
			when (@byear%12 = 10) then '¸»'
			else '¾ç'
		 end
		 print concat(@username,'(',@byear,'³â»ı)','ÀÇ ¶ì´Â ' , @zodiac, 'ÀÔ´Ï´Ù')
go

exec usp_zodiac '¼º½Ã°æ'

exec sp_databases;
exec sp_tables 'userTbl','dbo'