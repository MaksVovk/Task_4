/*для выборки всех преподавателей на курсах, у которых учатся больше 2000 студентов;*/
SELECT teacher.first_name FROM teacher JOIN course ON teacher.id = course.id_teacher JOIN courses ON
course.id = courses.id_course JOIN student ON courses.id_student = student.id WHERE course_title = 'biology';

/*для выборки студентов, у которых по курсу 'Programming' средняя оценка > 4, и отсортировать их по фамилии, имени;*/
SELECT student.first_name, student.last_name FROM student JOIN marks ON student.id = marks.id_student JOIN courses
ON marks.id_student = courses.id_student JOIN course ON courses.id_course = course.id WHERE mark > 3 Order BY student.last_name;

/*запрос, который выведет количество отличников, количество студентов в каждой группе.*/
SELECT teacher.first_name, count(courses.id_student) FROM teacher JOIN course ON teacher.id = course.id_teacher JOIN courses ON
course.id = courses.id_course ORDER BY course.course_title;