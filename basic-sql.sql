create schema netology;

create table PERSONS
(
    name varchar(255) not null,
    surname varchar(255) not null,
    age int not null,
    primary key (name, surname, age),
    phone_number varchar(255),
    city_of_living varchar(255)
);

insert into PERSONS (name, surname, age, phone_number, city_of_living)
VALUE ('Андрей', 'Иванов', 25, 334-56-75, 'Москва'), ('Петя', 'Смирнов', 30, 429-54-65, 'Самара'),
    ('Коля', 'Басков', 60, 338-17-99, 'Москва'), ('Леонид', 'Агутин', 50, 654-24-12, 'Санкт-Петербург'),
    ('Евгений', 'Лосев', 22, 524-20-68, 'Сочи'), ('Василий', 'Пупкин', 33, 341-86-43, 'Омск');

select name, surname
from PERSONS
where city_of_living = 'Москва';

select *
from PERSONS
where age > 27
order by age desc;