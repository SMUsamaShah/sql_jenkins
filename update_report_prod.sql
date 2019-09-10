REPLACE VIEW DEV_QA_PROD.MidRangeProducts AS 
	SELECT DEV_QA_PROD.Company.Name as CompanyName,
	       DEV_QA_PROD.Product.Name as ProductName,
	       DEV_QA_PROD.Product.Price as Price
	FROM DEV_QA_PROD.Company, DEV_QA_PROD.Product
	WHERE DEV_QA_PROD.Product.CompanyID = DEV_QA_PROD.Company.ID AND Price > 100 AND Price < 200;
