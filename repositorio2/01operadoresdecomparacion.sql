USE Bank
GO

SELECT ID, Amount
FROM BankTransaction
WHERE Amount > (SELECT AVG(Amount) FROM BankTransaction);