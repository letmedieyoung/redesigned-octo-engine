SELECT
    TITLE,
    B.BOARD_ID,
    REPLY_ID,
    R.WRITER_ID,
    R.CONTENTS,
    DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM
    USED_GOODS_BOARD AS B,
    USED_GOODS_REPLY AS R
WHERE
    B.BOARD_ID = R.BOARD_ID AND
    B.CREATED_DATE LIKE '2022-10%'    
ORDER BY
    R.CREATED_DATE, B.TITLE;