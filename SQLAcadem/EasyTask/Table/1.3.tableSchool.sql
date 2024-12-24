CREATE TABLE Class
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE Student
(
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR,
    middle_name VARCHAR,
    last_name   VARCHAR,
    birthday    DATE,
    address     VARCHAR
);

CREATE TABLE Student_in_class
(
    id      SERIAL PRIMARY KEY,
    class   INT REFERENCES Class (id),
    student INT REFERENCES Student (id)
);

CREATE TABLE Teacher
(
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR,
    middle_name VARCHAR,
    last_name   VARCHAR
);

CREATE TABLE Subject
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE Timepair
(
    id         SERIAL PRIMARY KEY,
    start_pair TIME,
    end_pair   TIME
);

CREATE TABLE Schedule
(
    id          SERIAL PRIMARY KEY,
    date        DATE,
    class       INT REFERENCES Class (id),
    number_pair INT REFERENCES Timepair (id),
    teacher     INT REFERENCES Teacher (id),
    subject     INT REFERENCES Subject (id),
    classroom   INT
);

INSERT INTO Class (id, name)
VALUES (1, '8 A'),
       (2, '8 B'),
       (3, '9 C'),
       (4, '9 B'),
       (5, '9 A'),
       (6, '10 B'),
       (7, '10 A'),
       (8, '11 B'),
       (9, '11 A'),
       (10, '7 A'),
       (11, '7 B'),
       (12, '6 A'),
       (13, '6 B'),
       (14, '5 A'),
       (15, '5 B'),
       (16, '4 A');

INSERT INTO Schedule (id, date, class, number_pair, teacher, subject, classroom)
VALUES (1, '2019-09-01', 9, 1, 11, 1, 47),
       (2, '2019-09-01', 9, 2, 8, 2, 13),
       (3, '2019-09-01', 9, 3, 4, 3, 13),
       (4, '2019-09-02', 9, 1, 4, 3, 13),
       (5, '2019-09-02', 9, 2, 2, 4, 34),
       (6, '2019-09-02', 9, 3, 6, 5, 35),
       (7, '2019-09-03', 9, 1, 5, 6, 36),
       (8, '2019-09-03', 9, 2, 13, 7, 37),
       (9, '2019-09-03', 9, 3, 6, 8, 38),
       (10, '2019-09-04', 9, 1, 9, 9, 39),
       (11, '2019-09-04', 9, 2, 10, 10, 40),
       (12, '2019-09-04', 9, 3, 3, 11, 41),
       (13, '2019-09-05', 9, 1, 3, 13, 43),
       (14, '2019-09-05', 9, 2, 11, 1, 47),
       (15, '2019-09-05', 9, 3, 5, 6, 36),
       (16, '2019-08-30', 9, 1, 2, 4, 34),
       (17, '2019-08-30', 9, 2, 8, 2, 13),
       (18, '2019-08-30', 9, 3, 6, 5, 35),
       (19, '2019-08-30', 9, 4, 10, 1, 47),
       (20, '2019-09-03', 9, 4, 10, 10, 40),
       (21, '2019-08-30', 8, 1, 7, 9, 53),
       (22, '2019-08-30', 8, 2, 7, 9, 53),
       (23, '2019-08-30', 8, 3, 8, 2, 38),
       (24, '2019-08-30', 8, 4, 11, 1, 43),
       (25, '2019-08-30', 8, 5, 8, 3, 39),
       (26, '2019-09-01', 8, 2, 2, 4, 34),
       (27, '2019-09-01', 8, 3, 6, 5, 35),
       (28, '2019-09-01', 8, 4, 12, 6, 36),
       (29, '2019-09-01', 8, 5, 13, 7, 37),
       (30, '2019-09-02', 8, 3, 6, 8, 38),
       (31, '2019-09-02', 8, 4, 7, 9, 53),
       (32, '2019-09-03', 8, 1, 10, 10, 40),
       (33, '2019-09-03', 8, 2, 7, 9, 53),
       (34, '2019-09-03', 8, 3, 7, 9, 53),
       (35, '2019-09-04', 8, 1, 1, 11, 4),
       (36, '2019-09-04', 8, 2, 1, 12, 42),
       (37, '2019-09-04', 8, 3, 3, 13, 43),
       (38, '2019-09-04', 8, 4, 8, 2, 42),
       (39, '2019-09-04', 8, 5, 11, 1, 43),
       (40, '2019-09-05', 8, 2, 11, 1, 43),
       (41, '2019-09-03', 7, 1, 8, 2, 42),
       (42, '2019-09-03', 7, 2, 4, 3, 13),
       (43, '2019-09-03', 7, 3, 15, 10, 40),
       (44, '2019-09-02', 7, 2, 6, 5, 35);

INSERT INTO 