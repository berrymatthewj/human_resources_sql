--Step 1: Create original tables using the following code:

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

--Step 2: Import csv files.
--Step 3: Perform Data Analysis (see query.sql file for code, run in order).
--Step 4: Add foreign keys to database to increase data integrity using the following code:

ALTER TABLE dept_manager 
ADD FOREIGN KEY (emp_no) references employees (emp_no);

alter table employees
add foreign key (emp_no) references salaries (emp_no);

alter table employees
add foreign key (emp_title) references titles (title_id);

alter table dept_emp
add foreign key (emp_no) references salaries (emp_no);

alter table dept_emp
add foreign key (emp_no) references employees (emp_no);

alter table dept_emp
add foreign key (dept_no) references departments (dept_no);