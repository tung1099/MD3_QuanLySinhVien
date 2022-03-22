USE quanlysinhvien;

SELECT * FROM Student;
SELECT * FROM Subject WHERE Credit <10;

SELECT StudentId, StudentName, ClassName FROM student JOIN class c on c.ClassID = student.ClassId
WHERE ClassName = 'A1';

SELECT s.StudentId, s.StudentName, sub.SubName, m.Mark FROM student s
    JOIN mark m on s.StudentId = m.StudentId JOIN subject sub on m.SubId = sub.SubId
WHERE SubName = 'CF';

# Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
# Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
# Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
# Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
# Hiển thị các thông tin: StudentName, SubName, Mark.
# Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT * FROM Student WHERE StudentName LIKE 'h%';
SELECT * FROM Class WHERE MONTH(StartDate) = 12;
SELECT * FROM Subject WHERE Credit BETWEEN 3 AND 5;
UPDATE Student SET ClassId = 2 WHERE StudentName = 'hung';
SELECT s.StudentName, sub.SubName, m.Mark FROM Student s JOIN mark m on
    s.StudentId = m.StudentId JOIN subject sub on sub.SubId = m.SubId
ORDER BY Mark DESC ;

