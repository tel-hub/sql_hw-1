CREATE TABLE teachers (
	teacher_id int PRIMARY KEY auto_increment,
    created_at timestamp DEFAULT current_timestamp,
    salary SMALLINT UNSIGNED,
    fullname varchar(128) not null,    
    email varchar(128) not null,
    specialization varchar(1024) not null
);

CREATE TABLE schedules (
	lesson_id int PRIMARY KEY auto_increment,
    created_at timestamp DEFAULT current_timestamp,
	group_id int NOT NULL,
	teacher_id int NOT NULL,
    start timestamp default NULL,
    finish timestamp default NULL
);
    

SELECT students.fullname, student_groups.name
FROM students_attachments  
JOIN students ON students_attachments.student_id = students.student_id
JOIN student_groups ON students_attachments.group_id = student_groups.group_id;
