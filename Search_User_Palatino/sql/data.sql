create table search_applicant (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255),
	gender VARCHAR(255),
	address VARCHAR(255),
    job_position VARCHAR(255),
    application_status VARCHAR (255)
	date_applied TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (1, 'John', 'Doe', 'johndoe@example.com', 'Male', '123 Main St, Springfield, IL', 'Software Engineer', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (2, 'Jane', 'Smith', 'janesmith@example.com', 'Female', '456 Elm St, Springfield, IL', 'Quality Analyst', 'Reviewed');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (3, 'Alice', 'Brown', 'alicebrown@example.com', 'Female', '789 Oak St, Springfield, IL', 'Data Scientist', 'Accepted');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (4, 'Bob', 'Johnson', 'bobjohnson@example.com', 'Male', '101 Pine St, Springfield, IL', 'Project Manager', 'Rejected');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (5, 'Charlie', 'Davis', 'charliedavis@example.com', 'Non-binary', '102 Maple St, Springfield, IL', 'UI/UX Designer', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (6, 'David', 'Wilson', 'davidwilson@example.com', 'Male', '103 Cedar St, Springfield, IL', 'Network Engineer', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (7, 'Emma', 'Clark', 'emmaclark@example.com', 'Female', '104 Willow St, Springfield, IL', 'Technical Writer', 'Reviewed');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (8, 'Frank', 'Green', 'frankgreen@example.com', 'Male', '105 Birch St, Springfield, IL', 'Database Administrator', 'Accepted');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (9, 'Grace', 'Lee', 'gracelee@example.com', 'Female', '106 Poplar St, Springfield, IL', 'Business Analyst', 'Rejected');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (10, 'Henry', 'Young', 'henryyoung@example.com', 'Male', '107 Cypress St, Springfield, IL', 'DevOps Engineer', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (11, 'Ivy', 'Baker', 'ivybaker@example.com', 'Female', '108 Palm St, Springfield, IL', 'Security Analyst', 'Reviewed');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (12, 'Jack', 'Harris', 'jackharris@example.com', 'Male', '109 Redwood St, Springfield, IL', 'Cloud Engineer', 'Accepted');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (13, 'Kara', 'Martin', 'karamartin@example.com', 'Female', '110 Pine St, Springfield, IL', 'Product Manager', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (14, 'Liam', 'King', 'liamking@example.com', 'Male', '111 Elm St, Springfield, IL', 'Sales Manager', 'Rejected');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (15, 'Mia', 'Scott', 'miascott@example.com', 'Female', '112 Maple St, Springfield, IL', 'Marketing Specialist', 'Reviewed');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (16, 'Noah', 'Hill', 'noahhill@example.com', 'Male', '113 Cedar St, Springfield, IL', 'Graphic Designer', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (17, 'Olivia', 'Evans', 'oliviaevans@example.com', 'Female', '114 Oak St, Springfield, IL', 'Social Media Manager', 'Accepted');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (18, 'Paul', 'Adams', 'pauladams@example.com', 'Male', '115 Birch St, Springfield, IL', 'Finance Analyst', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (19, 'Quinn', 'Campbell', 'quinncampbell@example.com', 'Non-binary', '116 Poplar St, Springfield, IL', 'Research Scientist', 'Rejected');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (20, 'Rachel', 'Mitchell', 'rachelmitchell@example.com', 'Female', '117 Cypress St, Springfield, IL', 'Operations Manager', 'Reviewed');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (21, 'Sam', 'Morgan', 'sammorgan@example.com', 'Male', '118 Redwood St, Springfield, IL', 'IT Support Specialist', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (22, 'Tina', 'Cooper', 'tinacooper@example.com', 'Female', '119 Palm St, Springfield, IL', 'Human Resources', 'Accepted');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (23, 'Umar', 'Parker', 'umarparker@example.com', 'Male', '120 Pine St, Springfield, IL', 'Compliance Officer', 'Rejected');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (24, 'Vera', 'Collins', 'veracollins@example.com', 'Female', '121 Elm St, Springfield, IL', 'Logistics Manager', 'Reviewed');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (25, 'Will', 'Reed', 'willreed@example.com', 'Male', '122 Maple St, Springfield, IL', 'Accountant', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (26, 'Xena', 'Long', 'xenalong@example.com', 'Female', '123 Cedar St, Springfield, IL', 'Event Coordinator', 'Accepted');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (27, 'Yara', 'Carter', 'yaracarter@example.com', 'Female', '124 Oak St, Springfield, IL', 'Public Relations', 'Pending');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (28, 'Zane', 'James', 'zanejames@example.com', 'Male', '125 Birch St, Springfield, IL', 'Customer Support', 'Rejected');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (29, 'Amelia', 'Bryant', 'ameliabryant@example.com', 'Female', '126 Poplar St, Springfield, IL', 'Training Specialist', 'Reviewed');
insert into search_applicant (id, first_name, last_name, email, gender, address, job_position, application_status) VALUES (30, 'Benjamin', 'Diaz', 'benjamindiaz@example.com', 'Male', '127 Cypress St, Springfield, IL', 'Software Tester', 'Pending');

