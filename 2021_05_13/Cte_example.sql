-- GROUP BY ROLLUP
WITH cte_summary([제품그룹],[그룹별 구매금액합계],DIV)
AS

	(SELECT groupName '제품그룹'
		, SUM(price * amount) AS '그룹별 구매금액합계'
		, GROUPING_ID(groupName) AS 'DIV'
	  FROM buyTbl
	 GROUP BY CUBE(groupName))


SELECT 

      IIF(div = 0, [제품그룹],'총합계') AS [상품그룹2] 
	 --CASE div
	 --WHEN 0 THEN [제품그룹]
	 --WHEN 1 THEN '총합계' END AS [상품그룹]
	  , [그룹별 구매금액합계]
	 --, div
	  FROM cte_summary;

