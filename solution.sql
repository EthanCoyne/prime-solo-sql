--1. Get all users from chicago
SELECT * FROM syntax_practice
WHERE city = 'chicago';

--2. Get all users with usernames that contain the letter 'a'
SELECT * FROM syntax_practice
WHERE username LIKE '%a%';

--3. The bank is giving a new customer bonus!
UPDATE syntax_practice
SET account_balance = 10.00
WHERE account_balance = 0.00
AND transactions_attempted = 0;

--4. Select users that have attempted 9 or more transactions
SELECT * FROM syntax_practice
WHERE transactions_attempted >= 9;

--5. Get username and acc balance of the 3 users with highest balances
SELECT * FROM syntax_practice
ORDER BY account_balance DESC
LIMIT 3;

--6. Get username and acc balance of the 3 users with lowest balances
SELECT * FROM syntax_practice
ORDER BY account_balance ASC
LIMIT 3;

--7. Get users with acc balances > $100
SELECT * FROM syntax_practice
WHERE account_balance > 100;

--8. Add a new record
INSERT INTO syntax_practice(username, city, transactions_completed, transactions_attempted, account_balance)
VALUES('GZA', 'Shao-lin Island', 1000, 1001, 9000000);

--9. Delete users in Miami or Phoenix with < 5 transactions
DELETE
FROM syntax_practice
WHERE (city = 'miami' OR city = 'phoenix')
AND transactions_completed < 5;
