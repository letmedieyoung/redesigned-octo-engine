/*
보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회.
아이디 순으로 정렬.
중성화를 거치지 않은 동물은 성별 및 중성화 여부에 Intact라고 표시됨.
*/
SELECT
    I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME
FROM
    ANIMAL_INS AS I
LEFT JOIN
    ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.SEX_UPON_INTAKE LIKE '%INTACT%' AND
    O.SEX_UPON_OUTCOME NOT LIKE '%INTACT%'
ORDER BY I.ANIMAL_ID;