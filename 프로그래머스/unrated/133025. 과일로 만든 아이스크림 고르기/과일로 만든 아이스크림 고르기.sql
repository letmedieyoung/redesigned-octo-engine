-- 코드를 입력하세요
SELECT
    HALF.FLAVOR 
FROM
    FIRST_HALF HALF, ICECREAM_INFO INFO
WHERE     
    HALF.FLAVOR = INFO.FLAVOR AND
    TOTAL_ORDER > 3000 AND
    INGREDIENT_TYPE = 'fruit_based'    
ORDER BY TOTAL_ORDER DESC;