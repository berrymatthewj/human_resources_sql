create table employees(
emp_no varchar not null,
emp_title varchar not null,
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date date not null,
PRIMARY KEY (emp_no)
); 

create table departments(
dept_no varchar not null,
dept_name varchar not null,
primary key (dept_no)
);

create table dept_emp(
emp_no varchar not null,
dept_no varchar not null,
primary key (emp_no,dept_no)
);

create table dept_manager(
dept_no varchar not null,
emp_no varchar not null,
primary key (emp_no)
);

create table salaries(
emp_no varchar not null,
salary int not null,
primary key (emp_no)
);

create table titles(
title_id varchar not null,
title varchar not null,
primary key (title_id)
);

/*foreign key info:
ALTER TABLE dept_manager 
ADD FOREIGN KEY (emp_no) references employees (emp_no);

alter table employees
add foreign key (emp_no) references salaries (emp_no);

alter table employees
add foreign key (emp_title) references titles (title_id);

alter table departments
add foreign key (dept_no) references dept_manager (dept_no);*/