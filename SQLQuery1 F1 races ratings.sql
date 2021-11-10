
-- First look at our data
Select * 
From [F1 race fan ratings]..[F1 excel sheet]
order by 1,2


-- order by highest ratings
Select * 
From [F1 race fan ratings]..[F1 excel sheet]
order by 7 desc


-- showing only where rating > 8500 
Select * 
From [F1 race fan ratings]..[F1 excel sheet]
where RATING > 8500
order by 7 desc
-- order by GPNAME
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where RATING > 8500
order by GPNAME
-- count the GPs
Select GPNAME, COUNT(*) as Num_Of_GPs
From [F1 race fan ratings]..[F1 excel sheet]
where RATING > 8500
Group by GPNAME
order by 2 desc


-- looking for GPs with highest avg rating
Select cast(GPNAME as nvarchar(255)) as GPNAME, AVG(cast(RATING as float)) as AVG_RATING
From [F1 race fan ratings]..[F1 excel sheet]
group by GPNAME
order by 2 desc
-- showing every rate for the top 3 avg GPs
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where GPNAME like '%Turkish%' or GPNAME like '%Korean%' or GPNAME like '%Indian%'
order by GPNAME, YEAR

Select GPNAME, COUNT(*)
From [F1 race fan ratings]..[F1 excel sheet]
where GPNAME like '%Turkish%' or GPNAME like '%Korean%' or GPNAME like '%Indian%'
Group by GPNAME
order by 2 desc



-- looking for avg rating by GP winner 
Select cast(P1 as nvarchar(255)) as Winner, AVG(cast(RATING as float)) as AVG_RATING
From [F1 race fan ratings]..[F1 excel sheet]
group by P1
order by 2 desc
-- looking for all the wins of the top 3
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Maldonado%' or P1 like '%Kubica%' or P1 like '%Raikkonen%'
order by 4

Select cast(P1 as nvarchar(255)) as winner, count(*)
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Maldonado%' or P1 like '%Kubica%' or P1 like '%Raikkonen%'
group by P1
order by 2


-- lets look at drivers with more wins
Select cast(P1 as nvarchar(255)) as Winner, count(*) as Num_of_Wins
From [F1 race fan ratings]..[F1 excel sheet]
group by P1
order by 2 desc

-- since Hamilton is the driver with most wins in F1 history, lets take a look at his wins
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Hamilton%'
order by 1,2
-- lets also look at races where he endend in second or third 
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Hamilton%' or P2 like '%Hamilton%' or P3 like '%Hamilton%'
order by 1,2
-- lets see his second places only 
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P2 like '%Hamilton%'
order by 1,2
-- lets see his third places
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P3 like '%Hamilton%'
order by 1,2
-- lets order by highest ratings in Hamilton's wins
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Hamilton%'
order by 7 desc
-- lets see where he won most races in his carrer so far
Select cast(GPNAME as nvarchar(255)) as GP_NAME, COUNT(*) NumOfWins
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Hamilton%'
GROUP BY GPNAME
ORDER BY 2 desc
-- lets see where he made more podiums
Select cast(GPNAME as nvarchar(255)) as GP_NAME, COUNT(*) NumOfWins
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Hamilton%' or P2 like '%Hamilton%' or P3 like '%Hamilton%'
GROUP BY GPNAME
ORDER BY 2 desc
-- lets see what year had more hamilton wins
Select cast(YEAR as nvarchar(255)) as YEAR_, COUNT(*) NumOfWins
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Hamilton%'
GROUP BY YEAR
ORDER BY 2 desc


-- lets take a look at all Brazilian GPs
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where GPNAME like '%Brazilian%'
order by 1,2
-- order by ratings
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where GPNAME like '%Brazilian%'
order by 7 desc
-- races with brazilian drivers in podium
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Massa%' or P1 like '%Barichello%' or P2 like '%Barichello%' or P2 like '%Massa%' or P3 like '%Barichello%' or P3 like '%Massa%' or P1 like '%piquet%' or P1 like '%piquet%' or P2 like '%piquet%'
order by 1,2
-- lets take a look at massa's wins and podiums
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Massa%' 
order by 1,2

Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Massa%' or P2 like '%Massa%' or P3 like '%Massa%' 
order by 1,2

-- lets take a look at barichello's wins and podiums
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Barichello%' 
order by 1,2

Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%Barichello%' or P2 like '%Barichello%' or P3 like '%Barichello%' 
order by 1,2

-- lets look at piquet's podium
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%piquet%' or P2 like '%piquet%' or P3 like '%piquet%' 
order by 1,2

-- lets search for senna's podium
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%senna%' or P2 like '%senna%' or P3 like '%senna%' 
order by 1,2

-- lets search for nasr's podium
Select *
From [F1 race fan ratings]..[F1 excel sheet]
where P1 like '%nasr%' or P2 like '%nasr%' or P3 like '%nasr%' 
order by 1,2