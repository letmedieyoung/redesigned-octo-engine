/*
 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회
 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목 출력
 결과는 진료예약일시를 기준으로 오름차순 정렬
*/
SELECT
    A.APNT_NO, P.PT_NAME, P.PT_NO, D.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM
    APPOINTMENT A
INNER JOIN PATIENT P ON P.PT_NO = A.PT_NO
INNER JOIN DOCTOR  D ON D.DR_ID = A.MDDR_ID
WHERE
    A.APNT_CNCL_YN = 'N' AND
    A.MCDP_CD = 'CS' AND
    A.APNT_YMD LIKE '2022-04-13%'
ORDER BY APNT_YMD;