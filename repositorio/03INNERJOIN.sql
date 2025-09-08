USE Bank;
GO

SELECT Account.ID, Account.Balance, Client.ID, Client.Name
FROM Account
INNER JOIN Client ON Account.ID = Client.ID;