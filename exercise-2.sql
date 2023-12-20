-- Display female passengers who survived and are older than 30.
SELECT * FROM Titanic dataset WHERE Sex = "female" AND Age > 30 

-- Find the average age of men who didn't survive.
SELECT AVG(Age) FROM Titanic dataset WHERE Sex = "male" AND Survived = 0

-- Display information for passengers who spent between $20 and $50 on their tickets and got on the ship at port 'C'."
SELECT * FROM Titanic dataset WHERE Embarked = "C" AND Fare BETWEEN 20 AND 50

-- Find the total number of the survivors in the first class.
SELECT SUM(Survived) FROM Titanic dataset WHERE Pclass = 1 AND Survived = 1

-- Show the information of passengers who boarded from Cherbourg (port 'C') and spent more than $75 on their tickets.".
SELECT * FROM Titanic dataset WHERE Embarked = "C" AND Fare > 75