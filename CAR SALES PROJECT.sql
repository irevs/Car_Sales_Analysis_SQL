SELECT * FROM customerdetails;

SELECT * FROM cardetails;

 -- -------------------------------------------------------------------------------------------------------------------------------


  -- (1) Find the count of customers where gender is Male -- 
  
  SELECT COUNT(*) AS MALE_CUST
  FROM customerdetails
  WHERE Gender = 'MALE';
  
  -- -------------------------------------------------------------------------------------------------------------------------------
 
  
  -- (2) Find the count of customers where gender is Female -- 
  
  SELECT COUNT(*) AS FEMALE_CUST
  FROM customerdetails
  WHERE GENDER = 'FEMALE';
  
 -- -------------------------------------------------------------------------------------------------------------------------------

  
  -- (3) Find the count of CUSTOMERS whose car color is BLACK and the BODY_STYLE is SUV --
  
  SELECT *
  FROM cardetails 
  WHERE COLOR = 'BLACK' AND Body_Style = 'SUV';
  
   -- -------------------------------------------------------------------------------------------------------------------------------

  
   -- (4) Find details of TOP 3 cars where transmission is AUTO and price is between 25000-50000 --
   
   SELECT COMPANY, PRICE
   FROM cardetails
   WHERE Transmission = 'AUTO' AND PRICE BETWEEN 25000 AND 50000
   ORDER BY PRICE DESC
   limit 3;
 
   -- -------------------------------------------------------------------------------------------------------------------------------

  
    -- (5) Update a record change Gender to Female  for ID = 33 -- 
    
    UPDATE customerdetails
    SET GENDER = 'Female'
    WHERE ID = 33;
    
     -- -------------------------------------------------------------------------------------------------------------------------------

    
    -- (6) Insert a new record to the existing table --
  
INSERT INTO customerdetails VALUES ( 2800, 29/2/2021, 'JUDE', 'MALE', 250000,7899457);

SELECT * FROM customerdetails
WHERE ID= 2800;
  
   -- -------------------------------------------------------------------------------------------------------------------------------

  
  -- (7) Delete a record from the existing table --

DELETE FROM customerdetails
WHERE Phone = 7899457;

 -- -------------------------------------------------------------------------------------------------------------------------------


-- (8) Find null values from the table --

SELECT *
FROM cardetails
WHERE Model IS NULL;

 -- -------------------------------------------------------------------------------------------------------------------------------


 -- (9) Find null values from both the tables using join --

SELECT *
FROM customerdetails CD
JOIN CARDETAILS CA 
ON CD.ID = CA.car_ID
WHERE MODEL IS NULL;

 -- -------------------------------------------------------------------------------------------------------------------------------


-- (10) Find total no of Auto transmissions with respect to each company --

SELECT COMPANY, COUNT(TRANSMISSION) AS NO_OF_AUTO_TRANSMISSION
FROM cardetails
WHERE Transmission IN ('AUTO') 
group by COMPANY
order by COUNT(TRANSMISSION) DESC;

 -- -------------------------------------------------------------------------------------------------------------------------------


-- (11) Find all details where Annual income> 500000 and Company is Toyota --

SELECT * 
FROM customerdetails CD
JOIN cardetails CA 
ON CD.ID = CA.CAR_ID
WHERE Annual_Income > 50000 AND COMPANY = 'TOYOTA';

 -- -------------------------------------------------------------------------------------------------------------------------------


-- (12) Find all car models and group them by company --


SELECT company, GROUP_CONCAT(DISTINCT model ORDER BY model ASC SEPARATOR ' -- ') AS models
FROM cardetails
GROUP BY company
ORDER BY company;









