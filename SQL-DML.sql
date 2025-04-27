INSERT INTO `drinks` (`name`, `price`, `cost`)
VALUES
('阿華田', 65, 20),
('百香紅茶', 45, 10);

------------------------------------------------

UPDATE `drinks`
SET `price` = 90
WHERE `name` = '冰咖啡';

-------------------------------------------------

DELETE FROM `drinks`
WHERE `name` = '阿華田';
