USE quanlysinhvien;

SELECT Address, COUNT(StudentId) AS 'So luong' FROM student GROUP BY Address;

SELECT s.StudentId,s.StudentName, AVG(Mark) FROM Student s JOIN mark m on s.StudentId = m.StudentId
GROUP BY s.StudentId, s.StudentName;

SELECT s.StudentId,s.StudentName, AVG(Mark) FROM Student s JOIN mark m on s.StudentId = m.StudentId
GROUP BY s.StudentId, s.StudentName HAVING AVG(Mark) > 9;

SELECT s.StudentId,s.StudentName, AVG(Mark) FROM Student s JOIN mark m on s.StudentId = m.StudentId
GROUP BY s.StudentId, s.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);

# Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT * FROM subject WHERE Credit = (SELECT MAX(Credit) FROM subject);

# Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT s.SubId, s.SubName, Mark, s.Status FROM subject s JOIN mark m on s.SubId = m.SubId
WHERE Mark = (SELECT MAX(Mark) FROM mark);

# Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên,
# xếp hạng theo thứ tự điểm giảm dần
SELECT s.StudentId,s.StudentName,s.Address,s.Phone,AVG(m.Mark)
FROM student s JOIN mark m on s.StudentId = m.StudentId
GROUP BY StudentName ORDER BY AVG(m.Mark) DESC ;

