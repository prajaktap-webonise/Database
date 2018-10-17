select DISTINCT emp.name, age from emp,dept,works where emp.id=works.emp_id and depart.id=works.dept_id and dept.name IN('hardware','software');

select dept_id, count(emp_id) from works, dept where dept.id = works.dept_id group by works.dept_id;


select count(dept_id) as 'number of employee', sum(pct_time) as 'total work done' from works group by dept_id;;


select e.name from emp e,works w,dept d where e.id=w.emp_id and w.dept_id=d.id and e.salary > all(select max (d2.budget) from dept d2 where d2.id=d.id);


select distinct manager_id from dept where budget < 1000000;


select * from dept order by budget desc limit 1;
