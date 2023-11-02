select * from student;

create proc show_all 
as
begin
select * from student
end

create proc insert_1 @n varchar(15),@t int,@e int,@m int ,@s int ,@ss int
as
begin
insert into student values(@n,@t,@e,@m,@s,@ss)
end

create proc update_1 @n varchar(15),@t int,@e int,@m int ,@s int ,@ss int,@id int
as
begin
update student set Name=@n,Tamil=@t,English=@e,Maths=@m,Science=@s,Social=@ss where rollno=@id 
end

create proc delete_1 @id int
as
begin 
delete from student where rollno=@id
end

create proc view_1 @id int
as
begin 
select * from student where rollno=@id
end