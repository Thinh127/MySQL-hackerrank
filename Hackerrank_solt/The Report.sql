SELECT IF(Students.Marks < 70, "NULL", Students.Name), Grades.Grade, Students.Marks
FROM Students JOIN Grades
WHERE Students.Marks between Grades.Min_Mark and Grades.Max_Mark
ORDER BY Grades.Grade DESC, Students.Name ASC;
