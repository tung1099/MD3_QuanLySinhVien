USE quanlysinhvien;
#INDEX
ALTER TABLE student ADD INDEX idx_name(StudentName);
EXPLAIN SELECT * FROM student WHERE StudentName = 'hung';

#Store Procedure
DELIMITER //
CREATE PROCEDURE findAllStudent()
BEGIN
    SELECT * FROM student;
end //
DELIMITER ;
call findAllStudent();

DELIMITER //
CREATE PROCEDURE getStudentById (IN sId INT(11))
BEGIN
    SELECT * FROM student WHERE StudentId = sId;
END //
DELIMITER ;
call getStudentById(2);

#VIEW
CREATE VIEW student_view AS SELECT StudentName,Phone,Address FROM student;
SELECT * FROM student_view;

CREATE OR REPLACE VIEW student_view AS
    SELECT StudentName,Phone,Address FROM student WHERE Address = 'Ha Noi';

