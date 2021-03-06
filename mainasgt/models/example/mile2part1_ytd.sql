SELECT O1.CODE, ((O2.NAV - O1.NAV)/O1.NAV)*100 AS PERFORMANCE FROM
(SELECT NAV, T2.CODE AS CODE, T2.MINIMUM FROM UDEMY_DB.MAINASGT.NAVHISTORY T3 JOIN
(SELECT CODE, MIN(T1.NAV_DATE) AS MINIMUM FROM 
(SELECT CODE, NAV_DATE FROM UDEMY_DB.MAINASGT.NAVHISTORY WHERE YEAR(NAV_DATE) = 2018) T1
GROUP BY CODE ORDER BY MINIMUM) T2
WHERE T3.NAV_DATE = T2.MINIMUM AND T3.CODE = T2.CODE ORDER BY T2.MINIMUM) O1 JOIN
(SELECT NAV, T2.CODE AS CODE, T2.MAXIMUM FROM UDEMY_DB.MAINASGT.NAVHISTORY T3 JOIN
(SELECT CODE, MAX(T1.NAV_DATE) AS MAXIMUM FROM 
(SELECT CODE, NAV_DATE FROM UDEMY_DB.MAINASGT.NAVHISTORY WHERE YEAR(NAV_DATE) = 2018) T1
GROUP BY CODE ORDER BY MAXIMUM) T2
WHERE T3.NAV_DATE = T2.MAXIMUM AND T3.CODE = T2.CODE ORDER BY T2.MAXIMUM) O2
ON O1.CODE = O2.CODE