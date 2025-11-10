select * from employee

select * from trainee



CREATE TABLE project (
    project_id       SERIAL PRIMARY KEY,
    project_name     VARCHAR NOT NULL,
    project_lead     INT NOT NULL,        
    start_date       DATE NOT NULL,
    end_date         DATE,
    status           VARCHAR NOT NULL,
    CONSTRAINT chk_project_status 
        CHECK (status IN ('Planned', 'In Progress', 'Completed', 'On Hold')),
		
    FOREIGN KEY (project_lead) REFERENCES employee(emp_id)
);

ALTER TABLE employee
ADD CONSTRAINT employee_pk PRIMARY KEY (emp_id);


-- CREATE TABLE public.sales_region(
--     region_id SERIAL PRIMARY KEY,
--     emp_id INT NOT NULL,
--     region_name VARCHAR,
--     country VARCHAR,
--     sales_quarter VARCHAR,
--     FOREIGN KEY (emp_id) REFERENCES public.employee(emp_id)
-- );

