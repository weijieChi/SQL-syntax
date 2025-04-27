-- 主鍵索引
CREATE TABLE `drinks` (
  `id`    int(11)      unsigned NOT NULL AUTO_INCREMENT,
  `name`  varchar(20)           NOT NULL,
  `price` int(11)      unsigned NOT NULL,
  `cost`  int(11)      unsigned NOT NULL,
  PRIMARY KEY (`id`)
);

-- 唯一索引
CREATE UNIQUE INDEX IDX_DRINK_NAME
ON `drinks` (`name`);

-- 普通索引
CREATE INDEX IDX_DRINK_COST
ON `drinks` (`cost`);

-- 組合索引
CREATE INDEX IDX_DRINK_NAME_PRICE
ON `drinks` (`name`, `price`);

-- 組合索引(利潤）
CREATE INDEX IDX_DRINK_PROFIT
ON `drinks` (`name`, (`price`-`cost`) DESC);

-- 插入資料
INSERT INTO `drinks`
	 	 (`name`, `price`, `cost`)
VALUES   ('阿華田', 65, 20),
         ('紅茶', 30, 20), 
         ('奶茶', 50, 30), 
         ('奶綠', 60, 30);
