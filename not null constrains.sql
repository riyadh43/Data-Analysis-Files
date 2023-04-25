create table companies
(
company_id int auto_increment,
company_name varchar(255),
headquarter_phone_number int(12),
primary key (company_id)
);

alter table companies 
modify company_name varchar(255) null;

alter table companies
change column company_name company_name varchar (255) not null;

insert into companies(headquarter_phone_number, company_name)
values('+12334234', 'Company A');

select*from companies;
