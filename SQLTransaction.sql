SET autocommit = 0;
START TRANSACTION;
UPDATE `balances` SET `balance`=`balance`-200  WHERE `account` = "Alice";
UPDATE `balances` SET `balance`=`balance`+200 WHERE `account` = "Bob";
COMMIT;
