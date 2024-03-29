/*
생산일자가 2022년 5월인 식품들의 식품 ID, 식품 이름, 총매출을 조회.
결과는 총매출을 기준으로 내림차순, 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬.
*/
SELECT
    P.PRODUCT_ID, P.PRODUCT_NAME, SUM(P.PRICE*O.AMOUNT) AS TOTAL_SALES
FROM
    FOOD_PRODUCT AS P
LEFT JOIN
    FOOD_ORDER AS O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE
    PRODUCE_DATE LIKE '2022-05%'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID ASC;

