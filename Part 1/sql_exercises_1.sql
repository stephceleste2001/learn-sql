CREATE TABLE Manufacturer (
	code INTEGER,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY (code)
);

CREATE TABLE Products (
	code INTGER,
	name VARCHAR(255) NOT NULL,
	price DECIMAL NOT NULL,
	Manufacturers INTEGER NOT NULL,
	PRIMARY KEY (code),
	FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(code)
) ENGINE=INNODB;

INSERT INTO Manufacturers(code, name) VALUES(
	(1, 'Sony'),
	(2, 'Creative Labs'),
	(3, 'Hewlett-Packard'),
	(4, 'Iomega'),
	(5, 'Fujitsu'),
	(6, 'Winchester');

INSERT INTO Products(code, name, price, Manufacturer) VALUES(
	(1, 'Hard drive', 240,5),
	(2, 'Memory', 120, 6),
	(3, 'ZIP drive', 150, 4),
	(4, 'Floppy disk', 5, 6),
	(5, 'Monitor', 240, 1),
	(6, 'DVD drive', 90, 2),
	(7, ));