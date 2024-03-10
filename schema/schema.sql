
create table product (
  id int primary key auto_increment, --auto increment is used here because whenever new table is inserted the number next in sequence will be assigned to it, basically to make it unique.
  name varchar(255) not null,
  desc TEXT not null,
  SKU varchar(255) not null,
  category_id int not null,
  inventory_id int not null,
  price decimal(10,2) not null, 
  discount_id int, --can be set to null in case there's no discount
  foreign key (category_id) references product_category(id),
  foreign key (inventory_id) references product_inventory(id),
  foreign key (discount_id) references discount(id)
  created_at datetime not null default current_timestamp, 
  modified_at datetime default null on update current_timestamp,
  deleted_at datetime default null
);

create table product_category (
  id int primary key auto_increment,
  name varchar(255) not null unique
  created_at datetime not null default current_timestamp, 
  modified_at datetime default null on update current_timestamp,
  deleted_at datetime default null
);


create table product_inventory (
  id int primary key auto_increment,
  quantity int not null,
  created_at datetime not null default current_timestamp,
  modified_at datetime default null on update current_timestamp,
  deleted_at datetime default null
);

create table discount (
  id int primary key auto_increment,
  name varchar(255) not null,
  desc text not null,
  discount_percent decimal(4,2) not null,  -- decimal places can be adjusted
  active boolean not null default FALSE,
  created_at datetime not null default current_timestamp, 
  modified_at datetime default null on update current_timestamp,
  deleted_at datetime default null
);

--been working on mongoDB since last year, Thank you for the opportunity to work on this assessment. I have learned a great deal throughout this experience and am grateful for the chance to contribute to the team.