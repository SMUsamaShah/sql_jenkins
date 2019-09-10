REPLACE VIEW DEV_QA.MidRangeProducts AS 
	SELECT DEV_QA.Company.Name as CompanyName,
	       DEV_QA.Product.Name as ProductName,
	       DEV_QA.Product.Price as Price
	FROM DEV_QA.Company, DEV_QA.Product
	WHERE DEV_QA.Product.CompanyID = DEV_QA.Company.ID AND Price > 200 AND Price < 1000;