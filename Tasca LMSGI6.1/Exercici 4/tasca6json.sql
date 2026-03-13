DROP DATABASE IF EXISTS tascajson;

CREATE DATABASE IF NOT EXISTS tascajson;

USE tascajson;

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    data JSON
);

CREATE TABLE offices(
	id INT AUTO_INCREMENT PRIMARY KEY,
    data JSON
);

INSERT INTO offices (data) VALUES
	('{ "officeCode" : "1",
		"city" : "San Francisco",
		"phone" : "+1 650 219 4782",
		"addressLine1" : "100 Market Street",
		"addressLine2" : "Suite 300",
		"state" : "CA",
		"country" : "USA",
		"postalCode" : "94080",
		"territory" : "NA"
	}'),
    ('{	"officeCode" : "2",
		"city" : "Boston",
		"phone" : "+1 215 837 0825",
		"addressLine1" : "1550 Court Place",
		"addressLine2" : "Suite 102",
		"state" : "MA",
		"country" : "USA",
		"postalCode" : "02107",
		"territory" : "NA"}'
	),
    ('{	"officeCode" : "3",
		"city" : "NYC",
		"phone" : "+1 212 555 3000",
		"addressLine1" : "523 East 53rd Street",
		"addressLine2" : "apt. 5A",
		"state" : "NY",
		"country" : "USA",
		"postalCode" : "10022",
		"territory" : "NA"
	}'),
    ('{	"officeCode" : "4",
		"city" : "Paris",
		"phone" : "+33 14 723 4404",
		"addressLine1" : "43 Rue Jouffroy Dabbans",
		"addressLine2" : null,
		"state" : null,
		"country" : "France",
		"postalCode" : "75017",
		"territory" : "EMEA"
	}'),
    ('{	"officeCode" : "5",
		"city" : "Tokyo",
		"phone" : "+81 33 224 5000",
		"addressLine1" : "4-1 Kioicho",
		"addressLine2" : null,
		"state" : "Chiyoda-Ku",
		"country" : "Japan",
		"postalCode" : "102-8578",
		"territory" : "Japan"
	}'),
    ('{	"officeCode" : "6",
		"city" : "Sydney",
		"phone" : "+61 2 9264 2451",
		"addressLine1" : "5-11 Wentworth Avenue",
		"addressLine2" : "Floor #2",
		"state" : null,
		"country" : "Australia",
		"postalCode" : "NSW 2010",
		"territory" : "APAC"
	}'),
    ('{	"officeCode" : "7",
		"city" : "London",
		"phone" : "+44 20 7877 2041",
		"addressLine1" : "25 Old Broad Street",
		"addressLine2" : "Level 7",
		"state" : null,
		"country" : "UK",
		"postalCode" : "EC2N 1HN",
		"territory" : "EMEA"
	}');

INSERT INTO employees (data) VALUES
	('{	"employeeNumber" : 1002,
		"lastName" : "Murphy",
		"firstName" : "Diane",
		"extension" : "x5800",
		"email" : "dmurphy@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : null,
		"jobTitle" : "President"
	}'),
    ('{	"employeeNumber" : 1056,
		"lastName" : "Patterson",
		"firstName" : "Mary",
		"extension" : "x4611",
		"email" : "mpatterso@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1002,
		"jobTitle" : "VP Sales"
	}'),
    ('{	"employeeNumber" : 1076,
		"lastName" : "Firrelli",
		"firstName" : "Jeff",
		"extension" : "x9273",
		"email" : "jfirrelli@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1002,
		"jobTitle" : "VP Marketing"
	}'),
    ('{	"employeeNumber" : 1088,
		"lastName" : "Patterson",
		"firstName" : "William",
		"extension" : "x4871",
		"email" : "wpatterson@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Manager (APAC)"
	}'),
    ('{	"employeeNumber" : 1102,
		"lastName" : "Bondur",
		"firstName" : "Gerard",
		"extension" : "x5408",
		"email" : "gbondur@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1056,
		"jobTitle" : "Sale Manager (EMEA)"
	}'),
    ('{	"employeeNumber" : 1165,
		"lastName" : "Jennings",
		"firstName" : "Leslie",
		"extension" : "x3291",
		"email" : "ljennings@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1166,
		"lastName" : "Thompson",
		"firstName" : "Leslie",
		"extension" : "x4065",
		"email" : "lthompson@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
    ('{ "employeeNumber" : 1188,
		"lastName" : "Firrelli",
		"firstName" : "Julie",
		"extension" : "x2173",
		"email" : "jfirrelli@classicmodelcars.com",
		"officeCode" : "2",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1216,
		"lastName" : "Patterson",
		"firstName" : "Steve",
		"extension" : "x4334",
		"email" : "spatterson@classicmodelcars.com",
		"officeCode" : "2",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1286,
		"lastName" : "Tseng",
		"firstName" : "Foon Yue",
		"extension" : "x2248",
		"email" : "ftseng@classicmodelcars.com",
		"officeCode" : "3",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1323,
		"lastName" : "Vanauf",
		"firstName" : "George",
		"extension" : "x4102",
		"email" : "gvanauf@classicmodelcars.com",
		"officeCode" : "3",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1337,
		"lastName" : "Bondur",
		"firstName" : "Loui",
		"extension" : "x6493",
		"email" : "lbondur@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
    ('{ "employeeNumber" : 1370,
		"lastName" : "Hernandez",
		"firstName" : "Gerard",
		"extension" : "x2028",
		"email" : "ghernande@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1401,
		"lastName" : "Castillo",
		"firstName" : "Pamela",
		"extension" : "x2759",
		"email" : "pcastillo@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1501,
		"lastName" : "Bott",
		"firstName" : "Larry",
		"extension" : "x2311",
		"email" : "lbott@classicmodelcars.com",
		"officeCode" : "7",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1504,
		"lastName" : "Jones",
		"firstName" : "Barry",
		"extension" : "x102",
		"email" : "bjones@classicmodelcars.com",
		"officeCode" : "7",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1611,
		"lastName" : "Fixter",
		"firstName" : "Andy",
		"extension" : "x101",
		"email" : "afixter@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1088,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1612,
		"lastName" : "Marsh",
		"firstName" : "Peter",
		"extension" : "x102",
		"email" : "pmarsh@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1088,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1619,
		"lastName" : "King",
		"firstName" : "Tom",
		"extension" : "x103",
		"email" : "tking@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1088,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1621,
		"lastName" : "Nishi",
		"firstName" : "Mami",
		"extension" : "x101",
		"email" : "mnishi@classicmodelcars.com",
		"officeCode" : "5",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1625,
		"lastName" : "Kato",
		"firstName" : "Yoshimi",
		"extension" : "x102",
		"email" : "ykato@classicmodelcars.com",
		"officeCode" : "5",
		"reportsTo" : 1621,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 1702,
		"lastName" : "Gerard",
		"firstName" : "Martin",
		"extension" : "x2312",
		"email" : "mgerard@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
    ('{	"employeeNumber" : 2003,
		"lastName" : "Taylor",
		"firstName" : "Alice",
		"extension" : "x125",
		"email" : "alice.taylor@classicmodels.com",
		"officeCode" : "2",
		"reportsTo" : 1002,
		"jobTitle" : "Sales Manager"
	}');
    
    
-- 4.2.1 Quina consulta utilitzaries per obtenir els telèfons (phone) de totes les oficines de la taula offices? 
-- (Utilitza la funció JSON_UNQUOTE per eliminar les cometes del valor del JSON)

SELECT JSON_UNQUOTE(data->"$.phone") as telèfon 
FROM offices;

-- 4.2.2 Com podries filtrar els empleats que tenen una extensió que inclou el número 23  (utilitza JSON_EXTRACT)??

SELECT *
FROM employees
WHERE JSON_UNQUOTE(JSON_EXTRACT(data, '$.extension')) LIKE '%23%';

-- 4.2.3 Escriu una consulta que obtingui l'ID de l'empleat (employee_id) i el cognom (lastName) de tots els empleats.

SELECT data->>'$.employeeNumber' AS employee_id, data->>'$.lastName' AS lastName
FROM employees;

-- 4.2.4  Escriu una consulta que recuperi el número d'empleat, el seu nom complet, i la ciutat de la seva oficina, unint les taules offices i employees.

SELECT e.data->>'$.employeeNumber' AS `número d'empleat`, 
	   concat(e.data->>'$.firstName', ' ', e.data->>'$.lastName') AS `nom complet`, 
       o.data->>'$.city' AS `ciutat de l'oficina`
FROM employees e
JOIN offices o ON e.data->>'$.officeCode' = o.data->>'$.officeCode';