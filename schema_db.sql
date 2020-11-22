CREATE TABLE IF NOT EXISTS student (
            id integer PRIMARY KEY,
            first_name TEXT NOT NULL,
            last_name TEXT NOT NULL,
            id_group integer
            );
CREATE TABLE IF NOT EXISTS group_ (
            id integer PRIMARY KEY,
            name TEXT NOT NULL
            );
CREATE TABLE IF NOT EXISTS course (
            id integer PRIMARY KEY,
            cours_title TEXT NOT NULL,
            id_teacher TEXT
            );
CREATE TABLE IF NOT EXISTS teacher (
            id integer PRIMARY KEY,
            first_name TEXT NOT NULL,
            last_name TEXT NOT NULL,
            email TEXT NOT NULL
            );
CREATE TABLE IF NOT EXISTS marks (
            id integer PRIMARY KEY,
            id_student TEXT NOT NULL,
            id_course TEXT NOT NULL,
            mark integer NOT NULL
            );
CREATE TABLE IF NOT EXISTS courses (
            id integer PRIMARY KEY,
            id_student TEXT NOT NULL,
            id_course TEXT NOT NULL
            );

INSERT INTO student(first_name, last_name, id_group) VALUES('maks', 'vovk', 1);
INSERT INTO student(first_name, last_name, id_group) VALUES('mark', 'vosk', 2);
INSERT INTO student(first_name, last_name, id_group) VALUES('adik', 'volk', 3);
INSERT INTO student(first_name, last_name, id_group) VALUES('edic', 'kirt', 1);
INSERT INTO student(first_name, last_name, id_group) VALUES('sandro', 'samoa', 2);
INSERT INTO student(first_name, last_name, id_group) VALUES('vitek', 'zalcer', 3);

INSERT INTO teacher(first_name, last_name, email) VALUES('ivan', 'petrov', 'ivan@com');/**/
INSERT INTO teacher(first_name, last_name, email) VALUES('isaak', 'volder', 'isaak@com');
INSERT INTO teacher(first_name, last_name, email) VALUES('karl', 'zimen', 'karl@com');

INSERT INTO marks(id_student, id_course, mark) VALUES(1, 2, 4);
INSERT INTO marks(id_student, id_course, mark) VALUES(2, 3, 3);
INSERT INTO marks(id_student, id_course, mark) VALUES(3, 4, 5);
INSERT INTO marks(id_student, id_course, mark) VALUES(4, 5, 5);
INSERT INTO marks(id_student, id_course, mark) VALUES(5, 3, 4);
INSERT INTO marks(id_student, id_course, mark) VALUES(6, 4, 5);

INSERT INTO course(cours_title, id_teacher) VALUES('programming', 1);
INSERT INTO course(cours_title, id_teacher) VALUES('physics', 2);
INSERT INTO course(cours_title, id_teacher) VALUES('biology', 3);
INSERT INTO course(cours_title, id_teacher) VALUES('draw', 4);
INSERT INTO course(cours_title, id_teacher) VALUES('philosofy', 2);

INSERT INTO group_(name) VALUES('rr1');
INSERT INTO group_(name) VALUES('rr2');
INSERT INTO group_(name) VALUES('rr3');
INSERT INTO group_(name) VALUES('rr4');

INSERT INTO courses(id_student, id_course) VALUES(1, 2);
INSERT INTO courses(id_student, id_course) VALUES(1, 3);
INSERT INTO courses(id_student, id_course) VALUES(2, 2);
INSERT INTO courses(id_student, id_course) VALUES(3, 3);
INSERT INTO courses(id_student, id_course) VALUES(4, 4);