UPDATE Salespersons
	SET
		Store = 'Miami'
	WHERE
		ID_Salesperson = 4;

UPDATE Customers
	SET
		Email = 'ppicasso@gmail.com'
	WHERE
		ID_Customer = 0;

UPDATE Customers
	SET
		Email = 'lincoln@us.gov'
	WHERE
		ID_Customer = 1;

UPDATE Customers
	SET
		Email = 'hello@napoleon.me'
	WHERE
		ID_Customer = 2;
		
SELECT * FROM Cars;
SELECT * FROM Customers;
SELECT * FROM Salespersons;
SELECT * FROM Invoices;