/* PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력. 
* 컬럼명은 각각 PRICE_GROUP, PRODUCTS로 지정.
* 가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시. 
* 결과는 가격대를 기준으로 오름차순 정렬.
*/
SELECT
    (PRICE-PRICE%10000) AS PRICE_GROUP,
    COUNT(*) AS PRODUCTS
FROM
    PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;