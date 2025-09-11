USE Bank
GO

SELECT * FROM BankTransaction
WHERE Amount > 300 OR Amount IS NULL;