CREATE TABLE IF NOT EXISTS simple_tbl (
    color TEXT NOT NULL,
    value INT NOT NULL
);

INSERT INTO simple_tbl (color, value)
VALUES
    ('red', 1),
    ('red', 2),
    ('red', 3),
    ('yellow', 1),
    ('yellow', 2),
    ('yellow', 3),
    ('yellow', 4),
    ('blue', 1),
    ('blue', 2),
    ('blue', 3),
    ('blue', 4),
    ('blue', 5);

-- 查询 1：按颜色分组汇总 value
SELECT color, SUM(value) AS total_value
FROM simple_tbl
GROUP BY color;

SELECT color, SUM(value) AS total_value
FROM simple_tbl
WHERE value > 1
GROUP BY color;


SELECT color, SUM(value) AS total_value
FROM simple_tbl
WHERE value > 1
GROUP BY color
HAVING total_value > 10;