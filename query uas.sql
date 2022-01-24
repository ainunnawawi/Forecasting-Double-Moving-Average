query DMA
SELECT 
a.periode, 
a.harga, 
Round( ( SELECT SUM(b.harga) / COUNT(b.harga) FROM data_forecasting AS b 
WHERE DATEDIFF(a.periode, b.periode) BETWEEN 0 AND 4), 2) AS 'M1',
Round( ( SELECT SUM(b.M1) / COUNT(b.M1) FROM
    (SELECT 
	a.periode, 
    a.harga, 
    Round( ( SELECT SUM(b.harga) / COUNT(b.harga) FROM data_forecasting AS b WHERE DATEDIFF(a.periode, b.periode) 
	BETWEEN 0 AND 4), 2) AS 'M1' FROM data_forecasting AS a ORDER BY a.periode)
AS b WHERE DATEDIFF(a.periode, b.periode) BETWEEN 0 AND 4), 2) AS 'M2'
FROM data_forecasting AS a ORDER BY a.periode