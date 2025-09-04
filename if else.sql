-- if else condition in sql 
use world;
select code,name,
case 
when name="Aruba" then "terror country"
when name = "Angola" then "terrorist"
else  "tourism"
end as "status"
from country;


-- If Null
select name , indepyear , ifnull(indepyear,0)from country;
select count(indepyear) ,count( ifnull(indepyear,0))from country;


-- Null if  
select name ,continent,nullif(length(name),length(continent))from country;



select name ,population , 
case 
when population> 200000 then "Developed country"
when population> 100000 then "Developing country"
else "Under Developed"
end as CountryStatus 
from country;



