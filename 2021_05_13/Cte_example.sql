-- GROUP BY ROLLUP
WITH cte_summary([��ǰ�׷�],[�׷캰 ���űݾ��հ�],DIV)
AS

	(SELECT groupName '��ǰ�׷�'
		, SUM(price * amount) AS '�׷캰 ���űݾ��հ�'
		, GROUPING_ID(groupName) AS 'DIV'
	  FROM buyTbl
	 GROUP BY CUBE(groupName))


SELECT 
	  CASE div
	  WHEN 0 THEN [��ǰ�׷�]
	  WHEN 1 THEN '���հ�' END AS [��ǰ�׷�]
	  , [�׷캰 ���űݾ��հ�]
	  , div
	  FROM cte_summary;