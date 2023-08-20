use students;

create table if not exists student(
    id INT primary key not null auto_increment,
    last_name VARCHAR(50) not null,
    first_name VARCHAR(50) not null,
    midle_name VARCHAR(50) not null,
    phone VARCHAR(50),
    mail VARCHAR(50),
    telegram VARCHAR(50),
    git VARCHAR(50)
    );
