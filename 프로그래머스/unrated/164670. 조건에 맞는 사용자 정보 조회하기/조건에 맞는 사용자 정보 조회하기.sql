/*
중고 거래 게시물을 3건 이상 등록한 사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회. 
전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력
전화번호는 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입 출력
회원 ID를 기준으로 내림차순 정렬
*/
SELECT
    USER_ID,
    NICKNAME,
    CONCAT_WS(' ', CITY, STREET_ADDRESS1, STREET_ADDRESS2)AS '전체주소',
    CONCAT_WS('-', SUBSTR(TLNO,1,3), SUBSTR(TLNO,4,4), SUBSTR(TLNO,8,4)) AS '전화번호'
FROM
    USED_GOODS_BOARD, USED_GOODS_USER
WHERE USED_GOODS_BOARD.WRITER_ID = USED_GOODS_USER.USER_ID
GROUP BY USER_ID
HAVING COUNT(WRITER_ID) >= 3
ORDER BY USER_ID DESC;