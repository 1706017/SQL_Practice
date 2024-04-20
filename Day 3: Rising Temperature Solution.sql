SELECT w1.id
FROM Weather w1 
JOIN Weather w2
WHERE DATEDIFF(w1.recordDate,w2.recordDate) = 1
AND w1.temperature > w2.temperature;

--Here we are using DATEDIFF(DATE1,DATE2) SO this basically gives the number of difference between two dates
--And for the second condition to satisify we have compared the temprature records

