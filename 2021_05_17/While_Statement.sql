-- 1부터 100까지의 수를 반복하면서 7의 배수를 제외하고 합산하라

DECLARE @i INT , @hap BIGINT
SET @i=0
SET @hap = 0
WHILE(@i<=100)
BEGIN
   IF(@i%7=0)
   BEGIN
     SET @i = @i+1
	 CONTINUE
   END
  SET @hap = @hap + @i
  IF(@hap > 1000) break
  SET @i = @i + 1
END
PRINT CONCAT('1~100까지합 ==>',@hap)