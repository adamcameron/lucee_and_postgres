CREATE TABLE test (
    id int GENERATED ALWAYS AS IDENTITY (START WITH 101),
    value VARCHAR(50) NOT NULL
);

INSERT INTO test (value)
VALUES
    ('Test row 1'),
    ('Test row 2')
;
