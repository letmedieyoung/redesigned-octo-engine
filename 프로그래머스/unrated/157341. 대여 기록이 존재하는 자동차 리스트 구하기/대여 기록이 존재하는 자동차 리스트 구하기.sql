-- 자동차 종류가 '세단'인 자동차들 중 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력하는 SQL문을 작성해주세요. 자동차 ID 리스트는 중복이 없어야 하며, 자동차 ID를 기준으로 내림차순 정렬해주세요.
SELECT
    C.CAR_ID
FROM
    CAR_RENTAL_COMPANY_CAR AS C, CAR_RENTAL_COMPANY_RENTAL_HISTORY AS H
WHERE
    C.CAR_ID = H.CAR_ID AND
    C.CAR_TYPE = '세단' AND
    H.START_DATE LIKE '2022-10%'
GROUP BY C.CAR_ID
ORDER BY C.CAR_ID DESC;