

CREATE TABLE Visitor (
    visitor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    address VARCHAR(255),
    credit_card_number VARCHAR(20)
);

CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    phone_no VARCHAR(15),
    salary DECIMAL(10, 2),
    age INT,
    working_hours VARCHAR(50)
);

CREATE TABLE Ticket (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    title_id VARCHAR(10),
    date DATE,
    price DECIMAL(10, 2),
    managed_by INT,
    FOREIGN KEY (managed_by) REFERENCES Employee(employee_id)
);

CREATE TABLE Zoo (
    zoo_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    open_hours VARCHAR(255),
    location VARCHAR(255),
    contact_no VARCHAR(15)
);

CREATE TABLE AnimalGuide (
    guide_id INT AUTO_INCREMENT PRIMARY KEY,
    zoo_id INT,
    language VARCHAR(255),
    update_year YEAR,
    FOREIGN KEY (zoo_id) REFERENCES Zoo(zoo_id)
);

CREATE TABLE Animal (
    animal_id INT AUTO_INCREMENT PRIMARY KEY,
    cage_number INT,
    feeding_time TIME,
    gender VARCHAR(10),
    scientific_name VARCHAR(255)
);

CREATE TABLE AnimalDetail (
    animal_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT,
    height DECIMAL(5, 2),
    weight DECIMAL(5, 2),
    age INT,
    color VARCHAR(255),
    FOREIGN KEY (animal_id) REFERENCES Animal(animal_id)
);

CREATE TABLE AnimalBreed (
    breed_id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT,
    region VARCHAR(255),
    species VARCHAR(255),
    diet VARCHAR(255),
    population INT,
    habitat VARCHAR(255),
    physical_characteristics VARCHAR(255),
    FOREIGN KEY (animal_id) REFERENCES Animal(animal_id)
);

CREATE TABLE Visit (
    visit_id INT AUTO_INCREMENT PRIMARY KEY,
    visitor_id INT,
    zoo_id INT,
    visit_date DATE,
    FOREIGN KEY (visitor_id) REFERENCES Visitor(visitor_id),
    FOREIGN KEY (zoo_id) REFERENCES Zoo(zoo_id)
);

CREATE TABLE VisitorTicket (
    visitor_ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    visitor_id INT,
    ticket_id INT,
    FOREIGN KEY (visitor_id) REFERENCES Visitor(visitor_id),
    FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id)
);
