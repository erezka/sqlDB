INSERT INTO student (student_id,name,sex) VALUES ('3','Sergeev','m'),('4','Savina','f'),
('5','Sidorova','f'),('6','Damorov','m'),('7','Ramadzhanov','m'),('8','Nazarov','m'),('9','Damorov','m'),
('10','Svetikova','f');

INSERT INTO marks (mark_id, subject, student_id) VALUES (1,'java',1),(2,'math',1),(3,'gaming',1),(4,'gym',1),
(5,'java',2),(6,'math',2),(7,'gaming',2),(8,'gym',2),(9,'java',3),(10,'math',3),(11,'gaming',3),(12,'gym',3),
  (13,'java',4),(14,'math',4),(15,'gaming',4),(16,'gym',4),(17,'java',5),(18,'math',5),(19,'gaming',5),(20,'gym',5),
  (21,'java',6),(22,'math',6),(23,'gaming',6),(24,'gym',6),(25,'java',7),(26,'math',7),(27,'gaming',7),(28,'gym',7),
  (29,'java',8),(30,'math',8),(31,'gaming',8),(32,'gym',8),(33,'java',9),(34,'math',9),(35,'gaming',9),(36,'gym',9),
  (37,'java',10),(38,'math',10),(39,'gaming',10),(40,'gym',10);

update marks set mark = FLOOR(2 + (RAND() * 4))

select * from student;

select * from student order by name;

select m.subject, m.mark,st.name from marks m
  left join student st on st.student_id = m.student_id
  where m.subject = 'java';

select avg(m.mark) from marks m
  left join student st on st.student_id = m.student_id
  where st.name = 'Petrov'

select avg(m.mark), m.subject from marks m where m.subject in ('math','java','gaming','gym')
  group by m.subject
  

select avg(m.mark),m.subject,st.group from marks m
  left join student st on st.student_id = m.student_id
  where st.group in ('first','second')
  AND m.subject = 'java'
  group by st.group

 select count(*) as NumberOfMarks, st.name from marks m
  left join student st on st.student_id = m.student_id
  where st.name in ('Ivanov','Petrov','Sergeev','Savina','Sidorova','Damorov','Ramadzhanov','Nazarov','Damirov','Svetikova')
  group by st.name

 select st.name from student st
  left join marks m on st.student_id = m.student_id
  where m.mark = '2'
  group by st.name
  having count(m.mark) = 2;

 select m.subject from marks m
  left join student st on st.student_id = m.student_id
  where m.mark = '2'
  group by m.subject
  having count(m.mark) > 2;

delete from student
where student_id in (
select student_id from (
  select st.student_id from student st
  join marks m on st.student_id=m.student_id
  where m.mark='2'
  group by st.student_id
  having COUNT(m.mark)=3) as students
);



  



