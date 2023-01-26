USE MyTestDB;
GO

CREATE TABLE Province(
	id INT PRIMARY KEY,
	name nvarchar(20)
);

CREATE TABLE City(
	id INT PRIMARY KEY,
	name nvarchar(20),
	province_id INT FOREIGN KEY REFERENCES Province(id)
);

CREATE TABLE User_(
	id int PRIMARY KEY,
	phone varchar(11) UNIQUE,
	code nvarchar(20),
	fname nvarchar(25),
	lname nvarchar(20),
	pass nvarchar(25),
	invatation INT DEFAULT 10,
	is_logged_in bit
);

create table Reminder(
	id int PRIMARY KEY,
	ins_type nvarchar(15),
	ins_description nvarchar(100),
	due_date nvarchar(10),
	ins_period int,
	province_id int FOREIGN KEY REFERENCES Province(id),
	city_id int FOREIGN KEY REFERENCES City(id),
	user_id int FOREIGN KEY REFERENCES User_(id)
);

CREATE TABLE Inqury(
	id INT PRIMARY KEY,
    inq_type nvarchar(15),
);

CREATE TABLE Life_inq(
	id INT PRIMARY KEY,
	birth_date nvarchar(10),
	duration int,
	payment_way int,
	monthly_pay int,
	premiums_increase int,
	capital_increase int,
	death_coefficient int,
	inq_id int FOREIGN KEY REFERENCES Inqury(id)
);

CREATE TABLE Member(
	id int PRIMARY KEY,
	base_in nvarchar(30),
	age_range nvarchar(25),
	relation nvarchar(15),
	head_id INT FOREIGN KEY REFERENCES Member(id)
);

CREATE TABLE Health_inq(
	id int PRIMARY KEY,
	is_family bit,
	inq_id int FOREIGN KEY REFERENCES Inqury(id)
);

CREATE TABLE Property_inq(
	id int PRIMARY KEY,
	province_id int FOREIGN KEY REFERENCES Province(id),
	city_id int FOREIGN KEY REFERENCES City(id),
	structure_type NVARCHAR(10),
	uinit_count int,
	building_material NVARCHAR(10),
	life_building int,
	meterage int,
	cost_per_meter int,
	appliance_price int,
	inq_id int FOREIGN KEY REFERENCES Inqury(id)
);

CREATE TABLE Company(
	id int PRIMARY KEY,
	name NVARCHAR(20)
);

CREATE TABLE Insurance(
	id int PRIMARY KEY,
	ins_type nvarchar(15),
	price int,
	discount int,
	company_id int FOREIGN KEY REFERENCES Company(id)
);

CREATE TABLE Life_insurance(
	id INT PRIMARY KEY,
	redemption_value int,
	death_capital int,
	medical_expences int,
	ins_id int FOREIGN KEY REFERENCES Insurance(id)
);

CREATE TABLE Health_insurance(
	id int PRIMARY KEY,
	ins_service nvarchar(15),
	child_birth int,
	chronic_disease int,
	share_of_costs int,
	is_family bit,
	ins_id int FOREIGN KEY REFERENCES Insurance(id),
);

CREATE TABLE Property_ins(
	id int PRIMARY KEY,
	rating int,
	ability nvarchar(15),
	satisfaction nvarchar(15),
	branch nvarchar(20),
	in_id int FOREIGN KEY REFERENCES Insurance (id)
);

CREATE TABLE Earthquake_Insurance(
	id int PRIMARY KEY,
	in_id int FOREIGN KEY REFERENCES Property_ins(id),
);

CREATE TABLE Fire_Insurance(
	id int PRIMARY KEY,
	in_id int FOREIGN KEY REFERENCES Property_ins(id),
);

CREATE TABLE Buy(
	buy_id INT PRIMARY KEY,
	userid int FOREIGN KEY REFERENCES User_ (id),
	ins_id int FOREIGN KEY REFERENCES Insurance (id),
	inq_id int FOREIGN KEY REFERENCES inqury (id),
	final_price int,
	discount_code nvarchar(15)
);