select pc.ProductCategoryID ,
       pc.name
  from saleslt.ProductCategory as pc


select pd.name,
	   pd.ProductNumber,
	   pd.color,
	   pd.StandardCost,
	   pd.ListPrice, pd.size, pd.weight,
	   pc.ProductCategoryID,
       pc.name as category_name
  from saleslt.Product as pd
 right outer join SalesLT.ProductCategory as pc
    on pd.ProductCategoryID = pc.ProductCategoryID


select c.CustomerID,
	   concat(c.title, ' ' , c.firstname, ' ' , c.middlename, ' ' , c.lastname) as fullname,
	   c.CompanyName,c.EmailAddress, c.phone
  from saleslt.Customer as c                -- 847°³

select ad.AddressID,
	   ad.PostalCode,
	   concat(ad.addressline1, ' ' , ad.AddressLine2, ',', ad.city, ',', ad.StateProvince) as addr,
	   ad.CountryRegion as country
  from saleslt.Address as ad                -- 450°³

select ca.CustomerID,ca.AddressID,ca.AddressType 
  from saleslt.CustomerAddress as ca -- 417°³

select c.CustomerID,
	   concat(c.title, ' ' , c.firstname, ' ' , c.middlename, ' ' , c.lastname) as fullname,
	   c.CompanyName,c.EmailAddress, c.phone,
	   ca.CustomerID,ca.AddressID,ca.AddressType,
	   ad.PostalCode,
	   concat(ad.addressline1, ' ' , ad.AddressLine2, ',', ad.city, ',', ad.StateProvince) as addr
  from saleslt.Customer as c  
inner join saleslt.CustomerAddress as ca
    on c.CustomerID = ca.CustomerID
inner join saleslt.Address as ad
    on ad.AddressID = ca.AddressID
    