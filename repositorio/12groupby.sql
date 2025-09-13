USE Bank
GO

SELECT ID,AVG(Amount) AS MontoPromedio
FROM BankTransaction
GROUP BY ID;