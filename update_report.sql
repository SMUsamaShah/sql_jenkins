CREATE VIEW org.MidRangeProducts AS 
	SELECT org.company.Name as CompanyName,
	       org.product.Name as ProductName,
	       org.product.Price as Price
	FROM org.company, org.product
	WHERE org.product.CompanyID = org.company.ID AND Price > 500 AND Price < 1500;
