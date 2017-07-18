-- 問い合わせテーブル --
DROP TABLE IF EXISTS inquirys;
CREATE TABLE inquirys (
inquiry_id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ユニークなID',
email VARCHAR(320) NOT NULL COMMENT '問い合わせ者のメールアドレス',
inquiry_body TEXT NOT NULL COMMENT '問い合わせ内容',
name VARCHAR(620) NOT NULL COMMENT '名前',
birthday DATE COMMENT '誕生日',
PRIMARY KEY(`inquiry_id`)
)CHARACTER SET 'utf8mb4', ENGINE=InnoDB, COMMENT='1レコードが1件の問い合わせを意味するレコード';

-- 管理者用テーブル --
DROP TABLE IF EXISTS admin_users;
CREATE TABLE admin_users (
	admin_user_id varbinary(64) NOT NULL COMMENT '管理者ID',
	password varbinary(255) NOT NULL COMMNET '管理者パスワード',
	PRIMARY KEY (`admin_user_id`)
)CHARACTER SET 'utf8mb4', ENGINE=InnoDB, COMMENT='1レコードが1管理者を意味するテーブル';

