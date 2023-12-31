--q2.1
insert into student(s_email,s_name,major)
values('s1@jmu.edu','s1','IA'),
    ('s2@jmu.edu','s2','IA'),
    ('s3@jmu.edu','s3','ISAT'),
    ('s4@jmu.edu','s4','ISAT')

--q2.2
insert into professor(p_email,p_name,office)
values('p1@jmu.edu','p1','o1'),
     ('p2@jmu.edu','p2','o2')

--q2.3
insert into course(c_number,c_name,room,p_email)
values('c1','postgresql','r1','p1@jmu.edu'),
    ('c2','mongodb','r2','p2@jmu.edu'),
    ('c3','twitter','r1','p1@jmu.edu')

--q2.4
insert into enroll(s_email,c_number)
values('s1@jmu.edu','c1'),
    ('s2@jmu.edu','c1'),
    ('s3@jmu.edu','c1'),
    ('s4@jmu.edu','c2'),
    ('s2@jmu.edu','c3'),
    ('s3@jmu.edu','c3')

--q2.5
insert into professor(p_email,p_name,office)
values('p3@jmu.edu','p3','o3');

insert into course(c_number,c_name,room,p_email)
 values('c4','facebook','r1','p3@jmu.edu')

--Q1: you need to add the new professor data to the professor table first becuase p_email is a forign key in course table so you need to have it exist in the professor table first

--q2.6 
--Q2: you need to update course first beucase otherwise there will be a course in the system with no professor

Update course
set p_email = 'p3@jmu.edu'
where p_email = 'p1@jmu.edu'

--q2.7 
select * from enroll

--2.8
select c_number, count(s_email) as "course enrollment numbers" 
from enroll
group by c_number
having c_number='c1'

--2.9
select p_email,c_name
from course

--2.10
select p_email, count(c_name) as "number of courses taught"
from course
group by p_email
having p_email='p3@jmu.edu'


