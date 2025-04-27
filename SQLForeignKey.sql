-- 建立 drinks 資料表
CREATE TABLE `drinks` (
  `id`    int(11)          unsigned NOT NULL AUTO_INCREMENT,
  `name`  varchar(20)               NOT NULL,
  `price` int(11)          unsigned NOT NULL,
  `cost`  int(11)          unsigned NOT NULL,
  `categories_id` int(11)  unsigned NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`categories_id`) REFERENCES categories(`id`)
);
