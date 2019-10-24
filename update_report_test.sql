REPLACE VIEW DEV_QA.MidRangeProducts AS lock row for access
	SELECT DEV_QA.Company.Name as CompanyName,
	       DEV_QA.Product.Name as ProductName,
	       DEV_QA.Product.Price as Price
	FROM DEV_QA.Company, DEV_QA.Product
	WHERE DEV_QA.Product.CompanyID = DEV_QA.Company.ID AND Price > 100 AND Price < 200;
