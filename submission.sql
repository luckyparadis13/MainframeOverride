-- 1. Find suspicious post in April 2048
SELECT author
FROM forum_posts
WHERE date BETWEEN '2048-04-01' AND '2048-05-01'
  AND content ILIKE '%emptystack%';

-- 2. Look up the last name of the author
SELECT first_name, last_name
FROM forum_accounts
WHERE username IN ('steep-mechanic-65', 'smart-money-44');

-- 3. Find other forum users with the same last name
SELECT *
FROM forum_accounts
WHERE last_name = 'Steele';

-- 4. Find employees with the same last name
SELECT *
FROM emptystack_accounts
WHERE last_name = 'Steele';

-- 5. Get login credentials
SELECT username, password
FROM emptystack_accounts
WHERE first_name = 'Andrew' AND last_name = 'Steele';

-- Logged in using:
--    username: triple-cart-38
--    password: password456

-- 6. Search for message about the taxi project
SELECT *
FROM emptystack_messages
WHERE body ILIKE '%taxi%';

-- 7. Get the project code from the message
SELECT *
FROM emptystack_projects
WHERE code = 'TAXI';

-- 8. Get admin credentials
SELECT *
FROM emptystack_accounts
WHERE username = 'your-boss-99';

-- 9. Shut it all down
--    node mainframe -stop
