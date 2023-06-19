-- NI22 JavaDBAccess Lesson サポートファイル
--
-- DB、ユーザ作成SQLファイル
-- rootユーザで使用
-- コマンド: mysql -u root --default-character-set=utf8 -p < "C:\…\JavaDBAccess-dbinit1.sql"
--
-- @author Shinzo SAITO

-- DB削除
DROP DATABASE IF EXISTS shop;

-- DB作成
CREATE DATABASE shop CHARACTER SET utf8;

-- ユーザ作成(権限付与)
GRANT ALL PRIVILEGES ON shop.* TO shopowner@localhost IDENTIFIED BY 'hogehoge' WITH GRANT OPTION;

