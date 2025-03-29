create database pizza_hut;
CREATE TABLE orders (
    orders_id INT NOT NULL PRIMARY KEY,
    orders_date DATE NOT NULL,
    orders_time TIME NOT NULL
);
create table order_details(
order_details_id int not null primary key,
order_id int not null ,
pizza_id text not null,
quantity int not null );