-- NI22 JavaDBAccess Lesson サポートファイル
--
-- テーブル作成、データ登録SQLファイル
-- shopownerユーザで使用
-- コマンド: mysql -u shopowner --default-character-set=utf8 -p shop < "C:\…\JavaDBAccess-dbinit2.sql"
--
-- @author Shinzo SAITO

-- ordersテーブル削除
DROP TABLE IF EXISTS orders;

-- customersテーブル削除
DROP TABLE IF EXISTS customers;

-- customersテーブル作成
CREATE TABLE customers (
    customer_id INTEGER,
    cust_first_name TEXT NOT NULL,
    cust_last_name TEXT NOT NULL,
    cust_address TEXT,
    phone_numbers TEXT ,
    nls_language TEXT,
    nls_territory TEXT,
    credit_limit DECIMAL(9, 2),
    cust_email TEXT,
    account_mgr_id INTEGER,
    cust_geo_location TEXT,
    date_of_birth date,
    marital_status TEXT,
    gender CHAR(1),
    income_level TEXT,
    PRIMARY KEY(customer_id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ordersテーブル作成
CREATE TABLE orders (
    order_id INTEGER,
    order_date DATETIME NOT NULL,
    order_mode TEXT,
    customer_id INTEGER NOT NULL,
    order_status INTEGER,
    order_total DECIMAL(8, 2),
    sales_rep_id INTEGER,
    promotion_id INTEGER,
    PRIMARY KEY(order_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- customersデータ登録
INSERT INTO customers (customer_id,cust_first_name,cust_last_name,cust_address,phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level) VALUES
(240,'Malcolm','Kanth','3314 Eastern Ave 21224 Baltimore MD US','+1 410 123 4816','us','AMERICA',2400,'Malcolm.Kanth@PIPIT.COM',145,'-76.570102,39.28652','1955-06-19','married','F','H: 150,000 - 169,999'),
(241,'Malcolm','Broderick','12817 Coastal Hwy 21842 Ocean City MD US','+1 410 123 4817','us','AMERICA',2400,'Malcolm.Broderick@PLOVER.COM',145,'-75.056879,38.422394','1952-06-28','single','M','F: 110,000 - 129,999'),
(242,'Mary','Lemmon','11200 Scaggsville Rd 20723 Laurel MD US','+1 301 123 4818','us','AMERICA',2400,'Mary.Lemmon@PUFFIN.COM',145,'-76.904846,39.138404','1962-07-18','married','M','K: 250,000 - 299,999'),
(243,'Mary','Collins','9435 Washington Blvd N # M 20723 Laurel MD US','+1 301 123 4819','us','AMERICA',2400,'Mary.Collins@PYRRHULOXIA.COM',145,'-76.830336,39.117905','1955-08-18','married','F','F: 110,000 - 129,999'),
(244,'Matt','Gueney','2300 Harford Rd 21218 Baltimore MD US','+1 410 123 4822','us','AMERICA',2400,'Matt.Gueney@REDPOLL.COM',145,'-76.5969,39.315728','1952-08-27','single','M','G: 130,000 - 149,999'),
(245,'Max','von Sydow','2 2Nd St # A 21842 Ocean City MD US','+1 410 123 4840','us','AMERICA',2400,'Max.vonSydow@REDSTART.COM',145,'-75.084509,38.333211','1967-09-07','single','M','K: 250,000 - 299,999'),
(246,'Max','Schell','6917 W Oklahoma Ave 53219 Milwaukee WI US','+1 414 123 4363','us','AMERICA',2400,'Max.Schell@SANDERLING.COM',145,'-87.99935,42.988358','1984-09-16','married','M','F: 110,000 - 129,999'),
(247,'Cynda','Whitcraft','206 S Broadway # 707 55904 Rochester MN US','+1 507 123 4387','us','AMERICA',2400,'Cynda.Whitcraft@SANDPIPER.COM',145,'-92.46291,44.021356','1954-10-16','married','M','B: 30,000 - 49,999'),
(248,'Donald','Minnelli','160 Glenwood Ave 55405 Minneapolis MN US','+1 612 123 4436','us','AMERICA',2400,'Donald.Minnelli@SCAUP.COM',145,'-93.28336,44.979113','1953-10-26','single','M','F: 110,000 - 129,999'),
(249,'Hannah','Broderick','6915 Grand Ave 46323 Hammond IN US','+1 219 123 4145','us','AMERICA',2400,'Hannah.Broderick@SHRIKE.COM',145,'-87.44218,41.587639','1975-11-16','married','M','D: 70,000 - 89,999'),
(250,'Dan','Williams','2215 Oak Industrial Dr Ne 49505 Grand Rapids MI US','+1 616 123 4190','us','AMERICA',2400,'Dan.Williams@SISKIN.COM',145,'-85.61161,42.975227','1984-11-25','single','M','A: Below 30,000'),
(251,'Raul','Wilder','65 Cadillac Sq # 2701 48226 Detroit MI US','+1 313 123 4241','us','AMERICA',2500,'Raul.Wilder@STILT.COM',145,'-83.045345,42.331799','1945-12-15','married','M','E: 90,000 - 109,999'),
(252,'Shah Rukh','Field','3435 Tuscany Dr Se 49546 Grand Rapids MI US','+1 616 123 4259','us','AMERICA',2500,'ShahRukh.Field@WHIMBREL.COM',145,'-85.49774,42.900677','1957-12-25','single','M','I: 170,000 - 189,999'),
(253,'Sally','Bogart','215 4Th Ave Se 52401 Cedar Rapids IA US','+1 319 123 4269','us','AMERICA',2500,'Sally.Bogart@WILLET.COM',145,'-91.66561,41.976278','1985-01-14','married','M','H: 150,000 - 169,999'),
(254,'Bruce','Bates','1751 Madison Ave 51503 Council Bluffs IA US','+1 712 123 4284','us','AMERICA',3500,'Bruce.Bates@COWBIRD.COM',145,'-95.82708,41.244721','1940-01-25','single','M','D: 70,000 - 89,999'),
(255,'Brooke','Shepherd','810 1St Ave 51501 Council Bluffs IA US','+1 712 123 4289','us','AMERICA',3500,'Brooke.Shepherd@KILLDEER.COM',145,'-95.85574,41.260392','1985-02-13','married','M','C: 50,000 - 69,999'),
(256,'Ben','de Niro','500 W Oklahoma Ave 53207 Milwaukee WI US','+1 414 123 4312','us','AMERICA',3500,'Ben.deNiro@KINGLET.COM',145,'-87.91708,42.987664','1980-02-24','single','M','I: 170,000 - 189,999'),
(257,'Emmet','Walken','4811 S 76Th St # 205 53220 Milwaukee WI US','+1 414 123 4364','us','AMERICA',3600,'Emmet.Walken@LIMPKIN.COM',145,'-88.008361,42.957388','1975-03-15','married','M','B: 30,000 - 49,999'),
(258,'Ellen','Palin','310 Broadway St 56308 Alexandria MN US','+1 320 123 4385','us','AMERICA',3600,'Ellen.Palin@LONGSPUR.COM',145,'-95.377469,45.890088','1977-04-14','married','M','H: 150,000 - 169,999'),
(259,'Denholm','von Sydow','1721 E Lake St 55407 Minneapolis MN US','+1 612 123 4407','us','AMERICA',3600,'Denholm.vonSydow@MERGANSER.COM',145,'-93.24927,44.94833','1943-04-24','single','F','D: 70,000 - 89,999'),
(260,'Ellen','Khan','255 Great Arrow Ave 14207 Buffalo NY US','+1 716 123 4456','us','AMERICA',3600,'Ellen.Khan@VERDIN.COM',149,'-78.8782,42.939107','1962-05-14','married','M','F: 110,000 - 129,999'),
(262,'Fred','Reynolds','6640 Campbell Blvd 14094 Lockport NY US','+1 716 123 4627','us','AMERICA',3600,'Fred.Reynolds@WATERTHRUSH.COM',149,'-78.77288,43.103915','1958-07-13','married','M','F: 110,000 - 129,999'),
(263,'Fred','Lithgow','802 North Ave 15209 Pittsburgh PA US','+1 412 123 4677','us','AMERICA',3600,'Fred.Lithgow@WHIMBREL.COM',149,'-79.973484,40.488173','1979-07-23','single','M','D: 70,000 - 89,999'),
(264,'George','Adjani','1136 Arch St 19107 Philadelphia PA US','+1 215 123 4702','us','AMERICA',3600,'George.Adjani@WILLET.COM',149,'-75.15858,39.953503','1947-08-12','married','F','F: 110,000 - 129,999'),
(265,'Irene','Laughton','6Th And Master St 19122 Philadelphia PA US','+1 215 123 4749','us','AMERICA',3600,'Irene.Laughton@ANHINGA.COM',149,'-75.146,39.972648','1973-08-22','single','F','J: 190,000 - 249,999'),
(267,'Prem','Walken','1924 Bedford St 21502 Cumberland MD US','+1 301 123 4831','us','AMERICA',3700,'Prem.Walken@BRANT.COM',145,'-78.74141,39.67579','1953-09-11','married','F','G: 130,000 - 149,999'),
(268,'Kyle','Schneider','2674 Collingwood St 48206 Detroit MI US','+1 313 123 4167','us','AMERICA',3700,'Kyle.Schneider@DUNLIN.COM',145,'-83.114655,42.379998','1952-09-21','single','F','G: 130,000 - 149,999'),
(269,'Kyle','Martin','2713 N Bendix Dr 46628 South Bend IN US','+1 219 123 4116','us','AMERICA',3700,'Kyle.Martin@EIDER.COM',145,'-86.29384,41.713988','1958-10-11','married','F','D: 70,000 - 89,999'),
(271,'Shelley','Peckinpah','752 W Huron St 48341 Pontiac MI US','+1 810 123 4212','us','AMERICA',3700,'Shelley.Peckinpah@GODWIT.COM',145,'-83.319991,42.635196','1987-11-20','single','F','D: 70,000 - 89,999'),
(272,'Prem','Garcia','660 Woodward Ave # 2290 48226 Detroit MI US','+1 313 123 4240','us','AMERICA',3700,'Prem.Garcia@JACANA.COM',145,'-83.045995,42.330983','1960-12-10','married','M','I: 170,000 - 189,999'),
(273,'Bo','Hitchcock','1330 N Memorial Dr 53404 Racine WI US','+1 414 123 4340','us','AMERICA',5000,'Bo.Hitchcock@ANHINGA.COM',145,'-87.8003,42.737121','1954-01-09','married','M','E: 90,000 - 109,999'),
(274,'Bob','McCarthy','701 Seneca St 14210 Buffalo NY US','+1 716 123 4485','us','AMERICA',5000,'Bob.McCarthy@ANI.COM',149,'-78.85093,42.876154','1946-01-19','single','M','A: Below 30,000'),
(276,'Dom','Hoskins','811 N Brandywine Ave 12308 Schenectady NY US','+1 518 123 4562','us','AMERICA',5000,'Dom.Hoskins@AVOCET.COM',149,'-73.91715,42.806965','1951-03-10','married','M','E: 90,000 - 109,999'),
(277,'Don','Siegel','2904 S Salina St 13205 Syracuse NY US','+1 315 123 4585','us','AMERICA',5000,'Don.Siegel@BITTERN.COM',149,'-76.14293,43.01943','1950-03-20','single','M','B: 30,000 - 49,999'),
(278,'Gvtz','Bradford','3025 Sussex Ave 15226 Pittsburgh PA US','+1 412 123 4659','us','AMERICA',5000,'Gvtz.Bradford@BULBUL.COM',149,'-80.016204,40.384079','1964-04-08','married','M','K: 250,000 - 299,999'),
(280,'Rob','MacLaine','5344 Haverford Ave 19139 Philadelphia PA US','+1 215 123 4709','us','AMERICA',5000,'Rob.MacLaine@COOT.COM',149,NULL,'1949-05-09','married','M','B: 30,000 - 49,999'),
(281,'Don','Barkin','6959 Tulip St 19135 Philadelphia PA US','+1 215 123 4751','us','AMERICA',5000,'Don.Barkin@CORMORANT.COM',149,'-75.04023,40.024509','1956-05-18','single','M','I: 170,000 - 189,999'),
(282,'Kurt','Danson','511 S Central Ave # A 21202 Baltimore MD US','+1 410 123 4807','us','AMERICA',5000,'Kurt.Danson@COWBIRD.COM',145,'-76.59934,39.28475','1988-06-07','married','M','H: 150,000 - 169,999'),
(308,'Glenda','Dunaway','1795 Wu Meng 21191 Muang Chonburi CN','+86 811 012 4093','zhs','CHINA',1200,'Glenda.Dunaway@DOWITCHER.COM',148,NULL,'1957-07-08','married','M','C: 50,000 - 69,999'),
(309,'Glenda','Bates','1796 Tsing Tao 11111 Muang Nonthaburi CN','+86 123 012 4095','zhs','CHINA',1200,'Glenda.Bates@DIPPER.COM',148,NULL,'1955-07-18','single','M','F: 110,000 - 129,999'),
(323,'Goetz','Falk','1810 Tucker Crt 361181 Mumbai IN','+91 80 012 4123 +91 80 083 4833','hi','INDIA',5000,'Goetz.Falk@VEERY.COM',148,NULL,'1980-08-06','married','F','G: 130,000 - 149,999'),
(326,'Hal','Olin','Walpurgisstr 69 81243 Munich DE','+49 89 012 4129 +49 89 083 4839','d','GERMANY',2400,'Hal.Olin@FLICKER.COM',147,NULL,'1959-09-06','married','F','H: 150,000 - 169,999'),
(327,'Hannah','Kanth','Sendlinger Tor 4 81696 Munich DE','+49 90 012 4131 +49 90 083 4131','d','GERMANY',2400,'Hannah.Kanth@GADWALL.COM',147,NULL,'1956-09-15','single','M','F: 110,000 - 129,999'),
(328,'Hannah','Field','Theresienstr 15 81999 Munich DE','+49 91 012 4133 +49 91 083 4133','d','GERMANY',2400,'Hannah.Field@GALLINULE.COM',147,NULL,'1985-10-06','married','F','G: 130,000 - 149,999'),
(333,'Margret','Powell','Via Frenzy 6903 361196 Roma IT','+39 6 012 4543','i','ITALY',1200,'Margret.Powell@ANI.COM',147,NULL,'1953-10-16','single','M','G: 130,000 - 149,999'),
(334,'Harry Mean','Taylor','1822 Ironweed St 91261 Toronto ONT CA','+1 416 012 4147','us','AMERICA',1200,'HarryMean.Taylor@REDPOLL.COM',147,NULL,'1981-11-15','single','M','I: 170,000 - 189,999'),
(335,'Margrit','Garner','Via Luminosa 162 361197 Firenze IT','+39 55 012 4547','i','ITALY',500,'Margrit.Garner@STILT.COM',147,NULL,'1982-12-05','married','F','H: 150,000 - 169,999'),
(337,'Maria','Warden','Via Notoriosa 1932 Rd 361198 Firenze IT','+39 55 012 4551','i','ITALY',500,'Maria.Warden@TANAGER.COM',147,NULL,'1973-01-03','married','F','B: 30,000 - 49,999'),
(339,'Marilou','Landis','Via Notoriosa 1941 361199 Firenze IT','+39 55 012 4555','i','ITALY',500,'Marilou.Landis@TATTLER.COM',147,NULL,'1933-01-13','single','M','A: Below 30,000'),
(361,'Marilou','Chapman','Via Notoriosa 1942 361200 Firenze IT','+39 55 012 4559','i','ITALY',500,'Marilou.Chapman@TEAL.COM',147,NULL,'1989-08-11','single','F','D: 70,000 - 89,999'),
(363,'Kathy','Lambert','Via Delle Grazie 11 361225 Tellaro IT','+39 10 012 4363','i','ITALY',2400,'Kathy.Lambert@COOT.COM',147,NULL,'1956-08-31','married','M','C: 50,000 - 69,999'),
(360,'Helmut','Capshaw','1831 No Wong 111181 Peking CN','+86 10 012 4165','zhs','CHINA',3600,'Helmut.Capshaw@TROGON.COM',148,NULL,'1977-08-01','married','M','J: 190,000 - 249,999'),
(341,'Keir','George','Via Dolorosa 69 361229 Tellaro IT','+39 10 012 4365','i','ITALY',700,'Keir.George@VIREO.COM',147,NULL,'1963-02-03','married','F','E: 90,000 - 109,999'),
(342,'Marlon','Laughton','Via Notoriosa 1943 361201 Firenze IT','+39 55 012 4565','i','ITALY',2400,'Marlon.Laughton@CORMORANT.COM',147,NULL,'1947-02-13','single','F','F: 110,000 - 129,999'),
(343,'Keir','Chandar','Via Luminosa 162 361231 Tellaro IT','+39 10 012 4367','i','ITALY',700,'Keir.Chandar@WATERTHRUSH.COM',147,NULL,'1960-03-04','married','M','G: 130,000 - 149,999'),
(344,'Marlon','Godard','2017 Convoy St 876508 Tokyo JP','+81 565 012 4567','ja','JAPAN',2400,'Marlon.Godard@MOORHEN.COM',148,NULL,'1960-03-14','single','M','H: 150,000 - 169,999'),
(345,'Keir','Weaver','Via Di Firenze 231 361228 Tellaro IT','+39 10 012 4369','i','ITALY',700,'Keir.Weaver@WHIMBREL.COM',147,NULL,'1962-04-04','married','M','H: 150,000 - 169,999'),
(346,'Marlon','Clapton','Via Notoriosa 1949 361202 Firenze IT','+39 55 012 4569','i','ITALY',2400,'Marlon.Clapton@COWBIRD.COM',147,NULL,'1988-04-13','married','M','K: 250,000 - 299,999'),
(347,'Kelly','Quinlan','Via Frenzy 6903 361230 Tellaro IT','+39 10 012 4371 +39 10 083 4371','i','ITALY',3600,'Kelly.Quinlan@PYRRHULOXIA.COM',147,NULL,'2029-05-03','married','F','A: Below 30,000'),
(348,'Kelly','Lange','Piazza Del Congresso 22 361219 San Giminiano IT','+39 49 012 4373 +39 49 083 4373','i','ITALY',3600,'Kelly.Lange@SANDPIPER.COM',147,NULL,'1971-05-14','single','M','F: 110,000 - 129,999'),
(349,'Ken','Glenn','Piazza Quattre Stagioni 4 361220 San Giminiano IT','+39 49 012 4375 +39 49 083 4375','i','ITALY',3600,'Ken.Glenn@SAW-WHET.COM',147,NULL,'1967-06-03','married','M','K: 250,000 - 299,999'),
(350,'Ken','Chopra','Piazza Cacchiatore 23 361218 San Giminiano IT','+39 49 012 4377 +39 49 083 4377','i','ITALY',3600,'Ken.Chopra@SCAUP.COM',147,NULL,'1951-06-13','single','F','F: 110,000 - 129,999'),
(351,'Ken','Wenders','Via Notoriosa 1932 361232 Tellaro IT','+39 10 012 4379 +39 10 083 4379','i','ITALY',3600,'Ken.Wenders@REDPOLL.COM',147,NULL,'1962-07-03','married','F','F: 110,000 - 129,999'),
(380,'Meryl','Holden','2034 Sabrina Rd 361182 Samutprakarn IN','+91 80 012 4637 +91 80 083 4637','hi','INDIA',3700,'Meryl.Holden@DIPPER.COM',148,NULL,'1961-10-10','single','F','H: 150,000 - 169,999'),
(447,'Richard','Coppola','Piazza Svizzera 361211 Milano IT','+39 2 012 4771','i','ITALY',500,'Richard.Coppola@SISKIN.COM',147,NULL,'1981-10-30','married','F','C: 50,000 - 69,999'),
(449,'Rick','Romero','Via Del Disegno 194 361213 Milano IT','+39 2 012 4775','i','ITALY',1500,'Rick.Romero@LONGSPUR.COM',147,NULL,'1951-12-10','single','F','B: 30,000 - 49,999'),
(450,'Rick','Lyon','Via Delle Capeletti 52 361214 San Giminiano IT','+39 49 012 4777','i','ITALY',1500,'Rick.Lyon@MERGANSER.COM',147,NULL,'1941-01-01','married','F','F: 110,000 - 129,999'),
(451,'Ridley','Hackman','Via Delle Grazie 11 361215 San Giminiano IT','+39 49 012 4779','i','ITALY',700,'Ridley.Hackman@ANHINGA.COM',147,NULL,'1950-01-11','single','F','H: 150,000 - 169,999'),
(453,'Ridley','Young','1592 Silverado St 361123 Bangalore Kar IN','+91 80 012 4783','hi','INDIA',700,'Ridley.Young@CHUKAR.COM',148,NULL,'1945-02-10','single','M','F: 110,000 - 129,999'),
(454,'Rob','Russell','1593 Silverado St 361112 Bangalore Kar IN','+91 80 012 4785 +91 80 083 4785','hi','INDIA',5000,'Rob.Russell@VERDIN.COM',148,NULL,'1977-03-02','married','M','E: 90,000 - 109,999'),
(458,'Robert','de Niro','1597 Legend St Mysore Kar IN','+91 80 012 4793','hi','INDIA',3700,'Robert.deNiro@DOWITCHER.COM',148,NULL,'1986-03-12','single','F','H: 150,000 - 169,999'),
(466,'Rodolfo','Hershey','1605 Bazigar Crt Pune IN','+91 80 012 4809 +91 80 083 4809','hi','INDIA',5000,'Rodolfo.Hershey@VIREO.COM',148,NULL,'1947-04-11','single','M','F: 110,000 - 129,999'),
(467,'Rodolfo','Dench','1606 Sangam Blvd 361196 New Delhi IN','+91 11 012 4811 +91 11 083 4811','hi','INDIA',5000,'Rodolfo.Dench@SCOTER.COM',148,NULL,'1971-05-01','married','F','F: 110,000 - 129,999'),
(470,'Roger','Mastroianni','1609 Pakija Rd New Delhi IN','+91 11 012 4817 +91 11 083 4817','hi','INDIA',3700,'Roger.Mastroianni@CREEPER.COM',148,NULL,'1967-05-31','married','M','L: 300,000 and above'),
(473,'Rolf','Ashby','1612 Talaivar St Chennai Tam IN','+91 80 012 4823 +91 80 083 4823','hi','INDIA',5000,'Rolf.Ashby@WATERTHRUSH.COM',148,NULL,'1949-06-10','single','M','G: 130,000 - 149,999'),
(474,'Romy','Sharif','1613 Victoria St Calcutta IN','+91 33 012 4825 +91 33 083 4825','hi','INDIA',5000,'Romy.Sharif@SNIPE.COM',148,NULL,'1976-06-29','married','M','F: 110,000 - 129,999'),
(476,'Rosanne','Hopkins','1615 Crackers Crt 361168 Chennai - India IN','+91 80 012 4829','hi','INDIA',300,'Rosanne.Hopkins@ANI.COM',148,NULL,'1979-07-30','married','M','D: 70,000 - 89,999'),
(477,'Rosanne','Douglas','1616 Mr. India Ln 361168 Bombay - India Kar IN','+91 22 012 4831','hi','INDIA',300,'Rosanne.Douglas@ANHINGA.COM',148,NULL,'1970-08-09','single','F','F: 110,000 - 129,999'),
(478,'Rosanne','Baldwin','1617 Crackers St 361168 Bangalore - India Kar IN','+91 80 012 4833','hi','INDIA',300,'Rosanne.Baldwin@AUKLET.COM',148,NULL,'1967-08-29','married','F','A: Below 30,000'),
(480,'Roxanne','Michalkow','1619 Bowlers Rd 361168 Chandigarh Har IN','+91 172 012 4837','hi','INDIA',1200,'Roxanne.Michalkow@EIDER.COM',148,NULL,'1973-09-18','single','M','L: 300,000 and above'),
(481,'Roy','Hulce','1620 Sixers Crt 361168 Bombay Kar IN','+91 22 012 4839 +91 22 083 4839','hi','INDIA',5000,'Roy.Hulce@SISKIN.COM',148,NULL,'1967-09-28','married','F','E: 90,000 - 109,999'),
(482,'Roy','Dunaway','1622 Roja St 361168 Chennai Tam IN','+91 80 012 4841 +91 80 083 4841','hi','INDIA',5000,'Roy.Dunaway@WHIMBREL.COM',148,NULL,'1955-10-28','married','F','F: 110,000 - 129,999'),
(487,'Rufus','Dvrrie','1627 Sowdagar St 361168 New Delhi IN','+91 11 012 4851 +91 11 083 4851','hi','INDIA',1900,'Rufus.Dvrrie@PLOVER.COM',148,NULL,'1960-11-26','married','M','J: 190,000 - 249,999'),
(488,'Rufus','Belushi','1628 Pataudi St 361168 New Delhi IN','+91 11 012 4853 +91 11 083 4853','hi','INDIA',1900,'Rufus.Belushi@PUFFIN.COM',148,NULL,'1952-12-26','married','M','G: 130,000 - 149,999'),
(492,'Sally','Edwards','1632 Splash St 361168 Chandigarh Har IN','+91 172 012 4861','hi','INDIA',2500,'Sally.Edwards@TURNSTONE.COM',148,NULL,'1980-01-06','married','F','K: 250,000 - 299,999'),
(101,'Constantin','Welles','514 W Superior St 46901 Kokomo IN US','+1 317 123 4104','us','AMERICA',100,'Constantin.Welles@ANHINGA.COM',145,'-86.13631,40.485424','1972-02-20','married','M','B: 30,000 - 49,999'),
(102,'Harrison','Pacino','2515 Bloyd Ave 46218 Indianapolis IN US','+1 317 123 4111','us','AMERICA',100,'Harrison.Pacino@ANI.COM',145,'-86.120133,39.795766','1953-03-02','single','M','I: 170,000 - 189,999'),
(103,'Manisha','Taylor','8768 N State Rd 37 47404 Bloomington IN US','+1 812 123 4115','us','AMERICA',100,'Manisha.Taylor@AUKLET.COM',145,'-86.5173,39.302695','1983-03-22','married','F','H: 150,000 - 169,999'),
(104,'Harrison','Sutherland','6445 Bay Harbor Ln 46254 Indianapolis IN US','+1 317 123 4126','us','AMERICA',100,'Harrison.Sutherland@GODWIT.COM',145,'-86.272743,39.849678','1972-03-31','single','F','H: 150,000 - 169,999'),
(105,'Matthias','MacGraw','4019 W 3Rd St 47404 Bloomington IN US','+1 812 123 4129','us','AMERICA',100,'Matthias.MacGraw@GOLDENEYE.COM',145,'-86.58332,39.164783','1969-04-21','married','F','C: 50,000 - 69,999'),
(106,'Matthias','Hannah','1608 Portage Ave 46616 South Bend IN US','+1 219 123 4136','us','AMERICA',100,'Matthias.Hannah@GREBE.COM',145,'-86.27021,41.696023','1960-04-30','single','M','F: 110,000 - 129,999'),
(107,'Matthias','Cruise','23943 Us Highway 33 46517 Elkhart IN US','+1 219 123 4138','us','AMERICA',100,'Matthias.Cruise@GROSBEAK.COM',145,'-85.91393,41.631143','1969-05-21','married','F','G: 130,000 - 149,999'),
(108,'Meenakshi','Mason','136 E Market St # 800 46204 Indianapolis IN US','+1 317 123 4141','us','AMERICA',100,'Meenakshi.Mason@JACANA.COM',145,'-86.155533,39.768174','1957-06-20','married','M','H: 150,000 - 169,999'),
(109,'Christian','Cage','1905 College St 46628 South Bend IN US','+1 219 123 4142','us','AMERICA',100,'Christian.Cage@KINGLET.COM',145,'-86.27639,41.701348','1938-06-30','single','M','F: 110,000 - 129,999'),
(110,'Charlie','Sutherland','3512 Rockville Rd # 137C 46222 Indianapolis IN US','+1 317 123 4146','us','AMERICA',200,'Charlie.Sutherland@LIMPKIN.COM',145,'-86.219783,39.762173','1951-07-20','married','M','G: 130,000 - 149,999'),
(111,'Charlie','Pacino','1303 E University St 47401 Bloomington IN US','+1 812 123 4150','us','AMERICA',200,'Charlie.Pacino@LONGSPUR.COM',145,'-86.5175,39.160261','1948-07-29','single','M','G: 130,000 - 149,999'),
(112,'Guillaume','Jackson','115 N Weinbach Ave 47711 Evansville IN US','+1 812 123 4151','us','AMERICA',200,'Guillaume.Jackson@MOORHEN.COM',145,'-87.52901,37.978385','1954-08-19','married','M','I: 170,000 - 189,999'),
(113,'Daniel','Costner','2067 Rollett Ln 47712 Evansville IN US','+1 812 123 4153','us','AMERICA',200,'Daniel.Costner@PARULA.COM',145,'-87.6354,37.955373','1977-08-29','single','M','I: 170,000 - 189,999'),
(114,'Dianne','Derek','1105 E Allendale Dr 47401 Bloomington IN US','+1 812 123 4157','us','AMERICA',200,'Dianne.Derek@SAW-WHET.COM',145,'-86.52167,39.131013','1948-09-17','married','M','H: 150,000 - 169,999'),
(115,'Geraldine','Schneider','18305 Van Dyke St 48234 Detroit MI US','+1 313 123 4159','us','AMERICA',200,'Geraldine.Schneider@SCAUP.COM',145,'-83.024565,42.438298','1931-10-18','married','M','B: 30,000 - 49,999'),
(116,'Geraldine','Martin','Lucas Dr Bldg 348 48242 Detroit MI US','+1 313 123 4160','us','AMERICA',200,'Geraldine.Martin@SCOTER.COM',145,'-83.366535,42.206862','2027-10-28','single','M','A: Below 30,000'),
(117,'Guillaume','Edwards','1801 Monroe Ave Nw 49505 Grand Rapids MI US','+1 616 123 4162','us','AMERICA',200,'Guillaume.Edwards@SHRIKE.COM',145,'-85.67059,42.995694','1952-11-16','married','M','E: 90,000 - 109,999'),
(118,'Maurice','Mahoney','4925 Kendrick St Se 49512 Grand Rapids MI US','+1 616 123 4181','us','AMERICA',200,'Maurice.Mahoney@SNIPE.COM',145,'-85.54467,42.872615','1966-11-27','single','M','F: 110,000 - 129,999'),
(120,'Diane','Higgins','113 Washington Sq N 48933 Lansing MI US','+1 517 123 4199','us','AMERICA',200,'Diane.Higgins@TANAGER.COM',145,'-84.55249,42.733738','1984-12-26','single','M','H: 150,000 - 169,999'),
(121,'Dianne','Sen','2500 S Pennsylvania Ave 48910 Lansing MI US','+1 517 123 4201','us','AMERICA',200,'Dianne.Sen@TATTLER.COM',145,'-84.53837,42.706292','1953-01-15','married','M','H: 150,000 - 169,999'),
(122,'Maurice','Daltrey','3213 S Cedar St 48910 Lansing MI US','+1 517 123 4206','us','AMERICA',200,'Maurice.Daltrey@TEAL.COM',145,'-84.54811,42.698823','1943-02-15','married','M','A: Below 30,000'),
(123,'Elizabeth','Brown','8110 Jackson Rd 48103 Ann Arbor MI US','+1 313 123 4219','us','AMERICA',200,'Elizabeth.Brown@THRASHER.COM',145,'-83.890694,42.292947','1949-02-24','single','F','F: 110,000 - 129,999'),
(125,'Dianne','Andrews','27 Benton Rd 48602 Saginaw MI US','+1 517 123 4225','us','AMERICA',200,'Dianne.Andrews@TURNSTONE.COM',145,'-83.99558,43.412702','1959-03-27','single','F','F: 110,000 - 129,999'),
(126,'Charles','Field','8201 Livernois Ave 48204 Detroit MI US','+1 313 123 4226','us','AMERICA',300,'Charles.Field@BECARD.COM',145,'-83.137545,42.354686','1946-04-16','married','F','F: 110,000 - 129,999'),
(127,'Charles','Broderick','101 N Falahee Rd 49203 Jackson MI US','+1 517 123 4228','us','AMERICA',300,'Charles.Broderick@BITTERN.COM',145,'-84.34679,42.238519','1943-04-26','single','F','B: 30,000 - 49,999'),
(129,'Louis','Jackson','952 Vassar Dr 49001 Kalamazoo MI US','+1 616 123 4234','us','AMERICA',400,'Louis.Jackson@CARACARA.COM',145,'-85.56744,42.262007','1939-05-26','single','M','D: 70,000 - 89,999'),
(130,'Louis','Edwards','150 W Jefferson Ave # 2500 48226 Detroit MI US','+1 313 123 4242','us','AMERICA',400,'Louis.Edwards@CHACHALACA.COM',145,'-83.046195,42.32827','1944-06-14','married','M','C: 50,000 - 69,999'),
(131,'Doris','Dutt','40 Pearl St Nw # 1020 49503 Grand Rapids MI US','+1 616 123 4245','us','AMERICA',400,'Doris.Dutt@CHUKAR.COM',145,'-85.66949,42.966096','1976-07-14','married','F','C: 50,000 - 69,999'),
(132,'Doris','Spacek','1135 Catherine St 48109 Ann Arbor MI US','+1 313 123 4248','us','AMERICA',400,'Doris.Spacek@FLICKER.COM',145,'-83.715384,42.290596','1987-07-25','single','M','H: 150,000 - 169,999'),
(134,'Sissy','Puri','9936 Dexter Ave 48206 Detroit MI US','+1 313 123 4255','us','AMERICA',400,'Sissy.Puri@GREBE.COM',145,'-83.121065,42.374977','1972-09-12','married','F','F: 110,000 - 129,999'),
(135,'Doris','Bel Geddes','1660 University Ter 48104 Ann Arbor MI US','+1 313 123 4263','us','AMERICA',400,'Doris.BelGeddes@GROSBEAK.COM',145,'-83.727334,42.281681','1980-09-22','single','F','B: 30,000 - 49,999'),
(136,'Sissy','Warden','15713 N East St 48906 Lansing MI US','+1 517 123 4265','us','AMERICA',400,'Sissy.Warden@JACANA.COM',145,'-84.54281,42.7886','1944-10-12','married','F','F: 110,000 - 129,999'),
(138,'Mani','Fonda','10315 Hickman Rd 50322 Des Moines IA US','+1 515 123 4273','us','AMERICA',500,'Mani.Fonda@KINGLET.COM',145,'-93.75829,41.614875','1977-11-11','married','M','F: 110,000 - 129,999'),
(139,'Placido','Kubrick','2115 N Towne Ln Ne 52402 Cedar Rapids IA US','+1 319 123 4278','us','AMERICA',500,'Placido.Kubrick@SCOTER.COM',145,'-91.6714,42.032886','1942-11-22','single','M','F: 110,000 - 129,999'),
(140,'Claudia','Kurosawa','1928 Sherwood Dr 51503 Council Bluffs IA US','+1 712 123 4280','us','AMERICA',500,'Claudia.Kurosawa@CHUKAR.COM',145,'-95.81115,41.276064','1981-12-11','married','M','E: 90,000 - 109,999'),
(141,'Maximilian','Henner','2102 E Kimberly Rd 52807 Davenport IA US','+1 319 123 4282','us','AMERICA',500,'Maximilian.Henner@DUNLIN.COM',145,'-90.54472,41.5566','1973-12-21','single','M','H: 150,000 - 169,999'),
(143,'Sachin','Neeson','5112 Sw 9Th St 50315 Des Moines IA US','+1 515 123 4290','us','AMERICA',500,'Sachin.Neeson@GALLINULE.COM',145,'-93.62554,41.537188','1962-01-20','single','M','F: 110,000 - 129,999'),
(144,'Sivaji','Landis','221 3Rd Ave Se # 300 52401 Cedar Rapids IA US','+1 319 123 4301','us','AMERICA',500,'Sivaji.Landis@GOLDENEYE.COM',145,'-91.66643,41.977151','1970-02-09','married','M','F: 110,000 - 129,999'),
(145,'Mammutti','Pacino','2120 Heights Dr 54701 Eau Claire WI US','+1 745 123 4306','us','AMERICA',500,'Mammutti.Pacino@GREBE.COM',145,'-91.51556,44.795509','1946-02-19','single','M','F: 110,000 - 129,999'),
(147,'Ishwarya','Roberts','6555 W Good Hope Rd 53223 Milwaukee WI US','+1 414 123 4308','us','AMERICA',600,'Ishwarya.Roberts@LAPWING.COM',145,'-87.99294,43.148558','1944-03-21','single','F','G: 130,000 - 149,999'),
(148,'Gustav','Steenburgen','1314 N Stoughton Rd 53714 Madison WI US','+1 608 123 4309','us','AMERICA',600,'Gustav.Steenburgen@PINTAIL.COM',145,'-89.32103,43.11362','1950-04-10','married','M','F: 110,000 - 129,999'),
(149,'Markus','Rampling','4715 Sprecher Rd 53704 Madison WI US','+1 608 123 4318','us','AMERICA',600,'Markus.Rampling@PUFFIN.COM',145,'-89.31665,43.130717','1941-04-20','single','M','D: 70,000 - 89,999'),
(150,'Goldie','Slater','6161 N 64Th St 53218 Milwaukee WI US','+1 414 123 4323','us','AMERICA',700,'Goldie.Slater@PYRRHULOXIA.COM',145,'-87.99083,43.130205','1951-05-11','married','M','D: 70,000 - 89,999'),
(151,'Divine','Aykroyd','11016 W Lincoln Ave 53227 Milwaukee WI US','+1 414 123 4324','us','AMERICA',700,'Divine.Aykroyd@REDSTART.COM',145,'-88.049291,43.00271','1976-05-20','single','M','F: 110,000 - 129,999'),
(152,'Dieter','Matthau','8600 W National Ave 53227 Milwaukee WI US','+1 414 123 4328','us','AMERICA',700,'Dieter.Matthau@VERDIN.COM',145,NULL,'2022-06-09','married','M','A: Below 30,000'),
(153,'Divine','Sheen','615 N Sherman Ave 53704 Madison WI US','+1 608 123 4332','us','AMERICA',700,'Divine.Sheen@COWBIRD.COM',145,'-89.3638,43.107253','1967-06-20','single','M','I: 170,000 - 189,999'),
(154,'Frederic','Grodin','512 E Grand Ave 53511 Beloit WI US','+1 608 123 4344','us','AMERICA',700,'Frederic.Grodin@CREEPER.COM',145,'-89.03216,42.499575','1965-06-29','single','F','L: 300,000 and above'),
(155,'Frederico','Romero','600 N Broadway Fl 1 53202 Milwaukee WI US','+1 414 123 4347','us','AMERICA',700,'Frederico.Romero@CURLEW.COM',145,'-87.90777,43.037372','1942-07-09','married','M','E: 90,000 - 109,999'),
(156,'Goldie','Montand','5235 N Ironwood Ln 53217 Milwaukee WI US','+1 414 123 4348','us','AMERICA',700,'Goldie.Montand@DIPPER.COM',145,'-87.91841,43.113239','1955-08-09','married','F','F: 110,000 - 129,999'),
(157,'Sidney','Capshaw','322 E Michigan St 53202 Milwaukee WI US','+1 414 123 4350','us','AMERICA',700,'Sidney.Capshaw@DUNLIN.COM',145,'-87.90745,43.037389','1969-08-18','single','M','G: 130,000 - 149,999'),
(158,'Frederico','Lyon','1400 Bellinger St Fl 4 54703 Eau Claire WI US','+1 745 123 4367','us','AMERICA',700,'Frederico.Lyon@FLICKER.COM',145,'-91.51112,44.813529','1970-09-07','married','M','J: 190,000 - 249,999'),
(159,'Eddie','Boyer','411 E Wisconsin Ave # 2550 53202 Milwaukee WI US','+1 414 123 4369','us','AMERICA',700,'Eddie.Boyer@GALLINULE.COM',145,'-87.90645,43.038621','1953-10-07','married','M','G: 130,000 - 149,999'),
(160,'Eddie','Stern','808 3Rd St # 100 54403 Wausau WI US','+1 715 123 4372','us','AMERICA',700,'Eddie.Stern@GODWIT.COM',145,'-89.62748,44.963124','1950-11-06','married','M','G: 130,000 - 149,999'),
(161,'Ernest','Weaver','300 Crooks St 54301 Green Bay WI US','+1 414 123 4373','us','AMERICA',900,'Ernest.Weaver@GROSBEAK.COM',145,'-88.01714,44.510237','1942-11-16','single','M','B: 30,000 - 49,999'),
(162,'Ernest','George','122 E Dayton St 53703 Madison WI US','+1 608 123 4374','us','AMERICA',900,'Ernest.George@LAPWING.COM',145,'-89.38472,43.077067','1975-12-07','married','M','D: 70,000 - 89,999'),
(163,'Ernest','Chandar','633 S Hawley Rd 53214 Milwaukee WI US','+1 414 123 4376','us','AMERICA',900,'Ernest.Chandar@LIMPKIN.COM',145,'-87.98592,43.025362','1962-12-16','single','M','H: 150,000 - 169,999'),
(164,'Charlotte','Kazan','2122 Campbell Rd 54601 La Crosse WI US','+1 608 123 4378','us','AMERICA',1200,'Charlotte.Kazan@MERGANSER.COM',145,'-91.22433,43.815379','1954-01-05','married','M','I: 170,000 - 189,999'),
(165,'Charlotte','Fonda','3324 N Oakland Ave 53211 Milwaukee WI US','+1 414 123 4381','us','AMERICA',1200,'Charlotte.Fonda@MOORHEN.COM',145,'-87.88781,43.078038','1956-02-05','married','M','J: 190,000 - 249,999'),
(166,'Dheeraj','Alexander','666 22Nd Ave Ne 55418 Minneapolis MN US','+1 612 123 4397','us','AMERICA',1200,'Dheeraj.Alexander@NUTHATCH.COM',145,'-93.25421,45.009864','1950-02-14','single','F','G: 130,000 - 149,999'),
(167,'Gerard','Hershey','1501 Lowry Ave N 55411 Minneapolis MN US','+1 612 123 4399','us','AMERICA',1200,'Gerard.Hershey@PARULA.COM',145,'-93.29798,45.01319','1948-03-06','married','M','D: 70,000 - 89,999'),
(169,'Dheeraj','Davis','4200 Yosemite Ave S 55416 Minneapolis MN US','+1 612 123 4417','us','AMERICA',1200,'Dheeraj.Davis@PIPIT.COM',145,'-93.35285,44.924115','1981-04-05','married','F','F: 110,000 - 129,999'),
(170,'Harry Dean','Fonda','2800 Chicago Ave # 100 55407 Minneapolis MN US','+1 612 123 4419','us','AMERICA',1200,'HarryDean.Fonda@PLOVER.COM',145,'-93.26233,44.951875','1988-04-15','single','M','G: 130,000 - 149,999'),
(171,'Hema','Powell','200 1St St Sw 55905 Rochester MN US','+1 507 123 4421','us','AMERICA',1200,'Hema.Powell@SANDERLING.COM',145,'-92.46698,44.021392','1953-05-05','married','M','D: 70,000 - 89,999'),
(173,'Kathleen','Walken','1409 Willow St # 600 55403 Minneapolis MN US','+1 612 123 4434','us','AMERICA',1200,'Kathleen.Walken@VIREO.COM',145,'-93.28193,44.968631','1973-06-04','married','F','E: 90,000 - 109,999'),
(174,'Blake','Seignier','2720 Brewerton Rd 13211 Syracuse NY US','+1 315 123 4442','us','AMERICA',1200,'Blake.Seignier@GALLINULE.COM',149,'-76.14607,43.106533','1988-06-14','single','M','H: 150,000 - 169,999'),
(175,'Claude','Powell','2134 W Genesee St 13219 Syracuse NY US','+1 315 123 4447','us','AMERICA',1200,'Claude.Powell@GODWIT.COM',149,'-76.19845,43.047707','1946-07-04','married','M','F: 110,000 - 129,999'),
(176,'Faye','Glenn','1522 Main St 14305 Niagara Falls NY US','+1 716 123 4457','us','AMERICA',1200,'Faye.Glenn@GREBE.COM',149,'-79.05241,43.102789','1947-07-14','single','F','B: 30,000 - 49,999'),
(178,'Grace','Belushi','726 Union St 12534 Hudson NY US','+1 518 123 4464','us','AMERICA',1200,'Grace.Belushi@KILLDEER.COM',149,'-73.784949,42.246766','1986-09-02','married','M','H: 150,000 - 169,999'),
(179,'Harry dean','Forrest','137 Lark St 12210 Albany NY US','+1 518 123 4474','us','AMERICA',1200,'Harrydean.Forrest@KISKADEE.COM',149,'-73.76188,42.658418','1974-09-12','single','M','G: 130,000 - 149,999'),
(180,'Harry dean','Cage','33 Fulton St 12601 Poughkeepsie NY US','+1 914 123 4494','us','AMERICA',1200,'Harrydean.Cage@LAPWING.COM',149,'-73.928561,41.723468','1975-10-02','married','F','F: 110,000 - 129,999'),
(182,'Lauren','Dench','85 High St 14203 Buffalo NY US','+1 716 123 4575','us','AMERICA',1200,'Lauren.Dench@LONGSPUR.COM',149,'-78.86586,42.900169','1975-10-22','single','M','K: 250,000 - 299,999'),
(183,'Lauren','Altman','1 Palisade Ave Fl 2 10701 Yonkers NY US','+1 914 123 4578','us','AMERICA',1200,'Lauren.Altman@MERGANSER.COM',149,'-73.89811,40.933646','1968-11-01','married','F','C: 50,000 - 69,999'),
(184,'Mary Beth','Roberts','500 S Salina St # 500 13202 Syracuse NY US','+1 315 123 4597','us','AMERICA',1200,'MaryBeth.Roberts@NUTHATCH.COM',149,'-76.15252,43.044258','2027-11-11','single','M','A: Below 30,000'),
(185,'Matthew','Wright','33 Pine St 14094 Lockport NY US','+1 716 123 4599','us','AMERICA',1200,'Matthew.Wright@OVENBIRD.COM',149,'-78.69231,43.169422','1959-12-01','married','F','G: 130,000 - 149,999'),
(187,'Grace','Dvrrie','2979 Hamburg St 12303 Schenectady NY US','+1 518 123 4617','us','AMERICA',1200,'Grace.Dvrrie@PHOEBE.COM',149,'-73.93703,42.76779','1948-12-31','married','F','E: 90,000 - 109,999'),
(188,'Charlotte','Buckley','1790 Grand Blvd 12309 Schenectady NY US','+1 518 123 4618','us','AMERICA',1200,'Charlotte.Buckley@PINTAIL.COM',149,'-73.90567,42.814971','1949-01-10','single','F','F: 110,000 - 129,999'),
(189,'Gena','Harris','7 Ingelside Ln 10605 White Plains NY US','+1 914 123 4619','us','AMERICA',1200,'Gena.Harris@PIPIT.COM',149,'-73.7369,40.999002','1955-01-30','married','M','F: 110,000 - 129,999'),
(191,'Maureen','Sanders','6432 Rising Sun Ave 19111 Philadelphia PA US','+1 215 123 4644','us','AMERICA',1200,'Maureen.Sanders@PUFFIN.COM',149,'-75.095,40.050359','2024-02-29','married','M','A: Below 30,000'),
(192,'Sean','Stockwell','Rr 10 19606 Reading PA US','+1 610 123 4657','us','AMERICA',1200,'Sean.Stockwell@PYRRHULOXIA.COM',149,'-75.85273,40.333337','1956-03-30','married','M','I: 170,000 - 189,999'),
(193,'Harry dean','Kinski','2455 Rose Garden Rd 15220 Pittsburgh PA US','+1 412 123 4662','us','AMERICA',1200,'Harrydean.Kinski@REDPOLL.COM',149,'-80.045732,40.407729','1955-04-30','married','M','D: 70,000 - 89,999'),
(194,'Kathleen','Garcia','1812 Timberline Rd 16601 Altoona PA US','+1 814 123 4663','us','AMERICA',1200,'Kathleen.Garcia@REDSTART.COM',149,'-78.44857,40.487139','1971-05-30','married','F','I: 170,000 - 189,999'),
(195,'Sean','Olin','141 Schiller St 19601 Reading PA US','+1 610 123 4664','us','AMERICA',1200,'Sean.Olin@SCAUP.COM',149,'-75.93642,40.342217','1986-06-09','single','F','F: 110,000 - 129,999'),
(196,'Gerard','Dench','1126 Pawlings Rd 19403 Norristown PA US','+1 610 123 4667','us','AMERICA',1200,'Gerard.Dench@SCOTER.COM',149,'-75.432962,40.126981','1953-06-29','married','F','E: 90,000 - 109,999'),
(197,'Gerard','Altman','55 Church Hill Rd 19606 Reading PA US','+1 610 123 4669','us','AMERICA',1200,'Gerard.Altman@SHRIKE.COM',149,'-75.85054,40.359876','1984-07-08','single','F','F: 110,000 - 129,999'),
(198,'Maureen','de Funes','354 N Prince St 17603 Lancaster PA US','+1 717 123 4674','us','AMERICA',1200,'Maureen.deFunes@SISKIN.COM',149,'-76.30895,40.043037','1949-07-29','married','F','D: 70,000 - 89,999'),
(199,'Clint','Chapman','115 Chestnut St 19106 Philadelphia PA US','+1 215 123 4676','us','AMERICA',1400,'Clint.Chapman@SNIPE.COM',149,'-75.14343,39.94801','1952-08-07','single','F','F: 110,000 - 129,999'),
(200,'Clint','Gielgud','2899 Grand Ave 15225 Pittsburgh PA US','+1 412 123 4681','us','AMERICA',1400,'Clint.Gielgud@STILT.COM',149,'-80.117174,40.508616','1978-08-28','married','F','E: 90,000 - 109,999'),
(201,'Eric','Prashant','Po Box 39 15701 Indiana PA US','+1 412 123 4684','us','AMERICA',1400,'Eric.Prashant@TATTLER.COM',149,'-79.151699,40.620971','1943-09-27','married','F','C: 50,000 - 69,999'),
(202,'Ingrid','Welles','1604 Broadway Ave 15216 Pittsburgh PA US','+1 412 123 4688','us','AMERICA',1400,'Ingrid.Welles@TEAL.COM',149,'-80.024861,40.410256','1939-10-27','married','M','D: 70,000 - 89,999'),
(203,'Ingrid','Rampling','4734 Liberty Ave 15224 Pittsburgh PA US','+1 412 123 4691','us','AMERICA',1400,'Ingrid.Rampling@WIGEON.COM',149,'-79.94906,40.461561','1948-11-05','single','M','F: 110,000 - 129,999'),
(204,'Cliff','Puri','21 Thornwood Rd 17112 Harrisburg PA US','+1 717 123 4692','us','AMERICA',1400,'Cliff.Puri@CORMORANT.COM',149,'-76.80393,40.314701','1961-11-26','married','M','J: 190,000 - 249,999'),
(205,'Emily','Pollack','3725 W Lake Rd 16505 Erie PA US','+1 814 123 4696','us','AMERICA',1400,'Emily.Pollack@DIPPER.COM',149,'-80.16936,42.097165','1955-12-06','single','M','L: 300,000 and above'),
(206,'Fritz','Hackman','1808 4Th Ave 16602 Altoona PA US','+1 814 123 4697','us','AMERICA',1400,'Fritz.Hackman@DUNLIN.COM',149,'-78.399501,40.505884','1983-12-26','married','F','G: 130,000 - 149,999'),
(207,'Cybill','Laughton','Station Sq 15219 Pittsburgh PA US','+1 412 123 4700','us','AMERICA',1400,'Cybill.Laughton@EIDER.COM',149,'-79.9818,40.443237','1989-01-04','single','M','F: 110,000 - 129,999'),
(208,'Cyndi','Griem','4020 Garden Ave 16508 Erie PA US','+1 814 123 4706','us','AMERICA',1400,'Cyndi.Griem@GALLINULE.COM',149,'-80.11026,42.083634','1956-01-25','married','M','E: 90,000 - 109,999'),
(209,'Cyndi','Collins','100 N Peach St 19139 Philadelphia PA US','+1 215 123 4708','us','AMERICA',1400,'Cyndi.Collins@GODWIT.COM',149,'-75.22731,39.961649','1946-02-04','single','M','D: 70,000 - 89,999'),
(210,'Cybill','Clapton','835 Heister Ln 19605 Reading PA US','+1 610 123 4714','us','AMERICA',1400,'Cybill.Clapton@GOLDENEYE.COM',149,'-75.92064,40.364485','1974-02-24','married','F','D: 70,000 - 89,999'),
(211,'Luchino','Jordan','378 S Negley Ave 15232 Pittsburgh PA US','+1 412 123 4718','us','AMERICA',1500,'Luchino.Jordan@GREBE.COM',149,'-79.93347,40.459305','1983-03-06','single','F','A: Below 30,000'),
(212,'Luchino','Falk','5643 N 5Th St 19120 Philadelphia PA US','+1 215 123 4721','us','AMERICA',1500,'Luchino.Falk@OVENBIRD.COM',149,'-75.13043,40.036595','1972-03-25','married','M','L: 300,000 and above'),
(214,'Robin','Danson','815 Freeport Rd 15215 Pittsburgh PA US','+1 412 123 4724','us','AMERICA',1500,'Robin.Danson@PHAINOPEPLA.COM',149,'-79.896621,40.487805','1946-05-05','single','M','F: 110,000 - 129,999'),
(215,'Orson','Perkins','327 N Washington Ave # 300 18503 Scranton PA US','+1 717 123 4730','us','AMERICA',1900,'Orson.Perkins@PINTAIL.COM',149,'-75.662181,41.409215','1985-05-24','married','M','E: 90,000 - 109,999'),
(216,'Orson','Koirala','810 Race St 19107 Philadelphia PA US','+1 215 123 4738','us','AMERICA',1900,'Orson.Koirala@PIPIT.COM',149,'-75.15289,39.95474','1979-06-04','single','F','J: 190,000 - 249,999'),
(218,'Bryan','Dvrrie','3376 Perrysville Ave 15214 Pittsburgh PA US','+1 412 123 4740','us','AMERICA',2300,'Bryan.Dvrrie@REDPOLL.COM',149,'-80.014072,40.481972','1966-07-04','single','F','G: 130,000 - 149,999'),
(219,'Ajay','Sen','220 Penn Ave # 300 18503 Scranton PA US','+1 717 123 4741','us','AMERICA',2300,'Ajay.Sen@TROGON.COM',149,'-75.666231,41.409595','1977-07-13','single','M','K: 250,000 - 299,999'),
(220,'Carol','Jordan','135 S 18Th St # 1 19103 Philadelphia PA US','+1 215 123 4743','us','AMERICA',2300,'Carol.Jordan@TURNSTONE.COM',149,'-75.17787,39.949455','1976-07-23','married','M','I: 170,000 - 189,999'),
(221,'Carol','Bradford','522 Swede St 19401 Norristown PA US','+1 610 123 4744','us','AMERICA',2300,'Carol.Bradford@VERDIN.COM',149,'-75.343572,40.11615','1953-08-02','single','M','G: 130,000 - 149,999'),
(223,'Cary','Olin','1801 Lititz Pike 17601 Lancaster PA US','+1 717 123 4746','us','AMERICA',2300,'Cary.Olin@WATERTHRUSH.COM',149,'-76.30826,40.07257','1935-09-02','single','M','D: 70,000 - 89,999'),
(224,'Clara','Krige','101 E Olney Ave 19120 Philadelphia PA US','+1 215 123 4748','us','AMERICA',2300,'Clara.Krige@WHIMBREL.COM',149,'-75.12021,40.034937','1959-09-22','married','M','H: 150,000 - 169,999'),
(225,'Clara','Ganesan','612 Jefferson Ave 18510 Scranton PA US','+1 717 123 4752','us','AMERICA',2300,'Clara.Ganesan@WIGEON.COM',149,'-75.655941,41.411024','1959-10-02','single','F','I: 170,000 - 189,999'),
(227,'Kathy','Prashant','36 W 34Th St 16508 Erie PA US','+1 814 123 4766','us','AMERICA',2400,'Kathy.Prashant@ANI.COM',149,'-80.07008,42.105437','1983-11-01','single','M','J: 190,000 - 249,999'),
(228,'Graham','Neeson','1007 Mount Royal Blvd 15223 Pittsburgh PA US','+1 412 123 4767','us','AMERICA',2400,'Graham.Neeson@AUKLET.COM',149,'-79.959364,40.516644','1941-11-20','married','M','E: 90,000 - 109,999'),
(229,'Ian','Chapman','601 Market St 19106 Philadelphia PA US','+1 215 123 4768','us','AMERICA',2400,'Ian.Chapman@AVOCET.COM',149,'-75.15065,39.950394','1965-11-30','single','M','D: 70,000 - 89,999'),
(230,'Danny','Wright','5565 Baynton St 19144 Philadelphia PA US','+1 215 123 4771','us','AMERICA',2400,'Danny.Wright@BITTERN.COM',149,'-75.16979,40.036941','1948-12-20','married','M','F: 110,000 - 129,999'),
(232,'Donald','Hunter','5122 Sinclair Ln 21206 Baltimore MD US','+1 410 123 4795','us','AMERICA',2400,'Donald.Hunter@CHACHALACA.COM',145,'-76.545732,39.322775','1960-01-20','married','M','G: 130,000 - 149,999'),
(233,'Graham','Spielberg','680 Bel Air Rd 21014 Bel Air MD US','+1 410 123 4800','us','AMERICA',2400,'Graham.Spielberg@CHUKAR.COM',145,'-76.357073,39.523878','1970-01-29','single','M','D: 70,000 - 89,999'),
(234,'Dan','Roberts','4301 Ashland Ave 21205 Baltimore MD US','+1 410 123 4805','us','AMERICA',2400,'Dan.Roberts@NUTHATCH.COM',145,'-76.561682,39.301622','1973-02-18','married','M','I: 170,000 - 189,999'),
(235,'Edward','Oates','8004 Stansbury Rd 21222 Baltimore MD US','+1 410 012 4715 +1 410 083 4715','us','AMERICA',2400,'Edward.Oates@OVENBIRD.COM',145,'-76.500344,39.25618','1955-03-21','married','M','E: 90,000 - 109,999'),
(237,'Farrah','Quinlan','3000 Greenmount Ave 21218 Baltimore MD US','+1 410 123 4812','us','AMERICA',2400,'Farrah.Quinlan@PHAINOPEPLA.COM',145,'-76.609501,39.324878','1948-04-19','married','M','A: Below 30,000'),
(238,'Farrah','Lange','200 E Fort Ave 21230 Baltimore MD US','+1 410 123 4813','us','AMERICA',2400,'Farrah.Lange@PHALAROPE.COM',145,'-76.610142,39.272749','1981-05-19','married','M','F: 110,000 - 129,999'),
(239,'Hal','Stockwell','1262 Vocke Rd 21502 Cumberland MD US','+1 301 123 4814','us','AMERICA',2400,'Hal.Stockwell@PHOEBE.COM',145,NULL,'1966-05-29','single','M','H: 150,000 - 169,999'),
(222,'Cary','Stockwell','7708 City Ave 19151 Philadelphia PA US','+1 215 123 4745','us','AMERICA',2300,'Cary.Stockwell@VIREO.COM',149,'-75.278794,39.975525','1963-08-23','married','M','I: 170,000 - 189,999'),
(226,'Ajay','Andrews','223 4Th Ave # 1100 15222 Pittsburgh PA US','+1 412 123 4763','us','AMERICA',2300,'Ajay.Andrews@YELLOWTHROAT.COM',149,'-80.0027,40.439706','1956-10-21','married','M','F: 110,000 - 129,999'),
(231,'Danny','Rourke','5640 Fishers Ln 20852 Rockville MD US','+1 301 123 4794','us','AMERICA',2400,'Danny.Rourke@BRANT.COM',145,'-77.115297,39.062872','1947-12-31','single','M','F: 110,000 - 129,999'),
(236,'Edward','Julius','10209 Yearling Dr 20850 Rockville MD US','+1 301 123 4809','us','AMERICA',2400,'Edward.Julius@PARULA.COM',145,'-77.212047,39.098763','1986-03-30','single','M','F: 110,000 - 129,999'),
(261,'Emmet','Garcia','800 Carter St 14621 Rochester NY US','+1 716 123 4582','us','AMERICA',3600,'Emmet.Garcia@VIREO.COM',149,'-77.59255,43.19264','1961-06-13','married','M','H: 150,000 - 169,999'),
(266,'Prem','Cardinale','Rt 6 E 16365 Warren PA US','+1 814 123 4755','us','AMERICA',3700,'Prem.Cardinale@BITTERN.COM',149,'-79.093419,41.836445','1970-09-01','single','M','L: 300,000 and above'),
(270,'Meg','Derek','23985 Bedford Rd N 49017 Battle Creek MI US','+1 616 123 4166','us','AMERICA',3700,'Meg.Derek@FLICKER.COM',145,'-85.23775,42.419583','1971-11-10','married','M','F: 110,000 - 129,999'),
(275,'Dom','McQueen','8 Automation Ln 12205 Albany NY US','+1 518 123 4532','us','AMERICA',5000,'Dom.McQueen@AUKLET.COM',149,'-73.81064,42.719449','1984-02-08','married','F','G: 130,000 - 149,999'),
(279,'Holly','Kurosawa','932 High St 17603 Lancaster PA US','+1 717 123 4679','us','AMERICA',5000,'Holly.Kurosawa@CARACARA.COM',149,'-76.31964,40.028889','1961-04-19','single','M','I: 170,000 - 189,999'),
(283,'Kurt','Heard','400 E Joppa Rd 21286 Baltimore MD US','+1 410 123 4829','us','AMERICA',5000,'Kurt.Heard@CURLEW.COM',145,'-76.595984,39.401932','1994-06-18','single','M','H: 150,000 - 169,999'),
(352,'Kenneth','Redford','Via Notoriosa 1949 361236 Ventimiglia IT','+39 10 012 4381 +39 10 083 4381','i','ITALY',3600,'Kenneth.Redford@REDSTART.COM',147,NULL,'1971-07-13','single','F','B: 30,000 - 49,999'),
(378,'Meg','Sen','2033 Spartacus St Samutprakarn TH','+66 76 012 4633 +66 76 083 4633','th','THAILAND',3700,'Meg.Sen@COWBIRD.COM',149,NULL,'1953-09-30','married','M','C: 50,000 - 69,999'),
(448,'Richard','Winters','Ruella Delle Spiriti 361212 Milano IT','+39 2 012 4773','i','ITALY',500,'Richard.Winters@SNIPE.COM',147,NULL,'1954-11-30','married','M','F: 110,000 - 129,999'),
(452,'Ridley','Coyote','Via Delli Capelli 2 361216 San Giminiano IT','+39 49 012 4781','i','ITALY',700,'Ridley.Coyote@ANI.COM',147,NULL,'1949-01-31','married','M','F: 110,000 - 129,999'),
(463,'Robin','Adjani','1602 Sholay St Chennai Tam IN','+91 80 012 4803','hi','INDIA',1500,'Robin.Adjani@MOORHEN.COM',148,NULL,'1949-04-01','married','F','C: 50,000 - 69,999'),
(468,'Rodolfo','Altman','1607 Sangam Blvd 361114 New Delhi IN','+91 11 012 4813 +91 11 083 4813','hi','INDIA',5000,'Rodolfo.Altman@SHRIKE.COM',148,NULL,'1983-05-11','single','F','F: 110,000 - 129,999'),
(475,'Romy','McCarthy','1614 Gitanjali Rd 361168 Calcutta IN','+91 33 012 4827 +91 33 083 4827','hi','INDIA',5000,'Romy.McCarthy@STILT.COM',148,NULL,'1933-07-10','single','F','D: 70,000 - 89,999'),
(479,'Roxanne','Shepherd','1618 Villains St 361168 New Delhi - India IN','+91 11 012 4835 +91 11 083 4835','hi','INDIA',1200,'Roxanne.Shepherd@DUNLIN.COM',148,NULL,'1963-09-08','single','F','I: 170,000 - 189,999'),
(483,'Roy','Bates','1623 Hey Ram St 361168 Chennai - India IN','+91 80 012 4843 +91 80 083 4843','hi','INDIA',5000,'Roy.Bates@WIGEON.COM',148,NULL,'1942-11-07','single','M','G: 130,000 - 149,999'),
(731,'Margaux','Capshaw','Via Dolorosa 69 361195 Roma IT','+39 6 012 4539 +39 6 083 4539','i','ITALY',2400,'Margaux.Capshaw@EIDER.COM',147,NULL,'1933-10-02','single','M','B: 30,000 - 49,999'),
(757,'Kiefer','Reynolds','Piazza Cacchiatore 23 361184 Roma IT','+39 6 012 4391','i','ITALY',700,'Kiefer.Reynolds@AVOCET.COM',147,NULL,'1953-12-21','married','M','F: 110,000 - 129,999'),
(769,'Kris','Harris','Via Dello Croce 93 361217 San Giminiano IT','+39 49 012 4415','i','ITALY',400,'Kris.Harris@DIPPER.COM',147,NULL,'1949-02-19','married','M','G: 130,000 - 149,999'),
(772,'Kristin','Savage','Via Delli Capelli 2 361226 Tellaro IT','+39 10 012 4421','i','ITALY',400,'Kristin.Savage@CURLEW.COM',147,NULL,'1943-04-01','single','F','F: 110,000 - 129,999'),
(827,'Alain','Siegel','Alfred E. Neumann-Weg 3 3413 Baden-Daettwil AG CH','+41 58 012 3531','d','SWITZERLAND',500,'Alain.Siegel@VIREO.COM',147,NULL,'1973-06-19','married','F','I: 170,000 - 189,999'),
(831,'Albert','Bel Geddes','Helebardenweg 5 3413 Baden-Daettwil AG CH','+41 62 012 3539 +41 62 083 3539','d','SWITZERLAND',3500,'Albert.BelGeddes@DIPPER.COM',147,NULL,'1952-09-17','married','M','E: 90,000 - 109,999'),
(835,'Alexander','Eastwood','Zur Kantine 9 3413 Baden-Daettwil AG CH','+41 66 012 3547','d','SWITZERLAND',1200,'Alexander.Eastwood@AVOCET.COM',147,NULL,'1942-11-16','married','F','E: 90,000 - 109,999'),
(839,'Alfred','Johnson','Welschdoerfchen 1941 7001 Chur ZH CH','+41 81 012 3555','d','SWITZERLAND',3500,'Alfred.Johnson@FLICKER.COM',147,NULL,'1957-02-14','married','M','J: 190,000 - 249,999'),
(843,'Alice','Oates','Langstr 14 8004 Zuerich ZH CH','+41 4 012 3563','d','SWITZERLAND',700,'Alice.Oates@BECARD.COM',147,NULL,'1959-04-25','single','F','D: 70,000 - 89,999'),
(846,'Ally','Brando','Chrottenweg 3000 Bern BE CH','+41 31 012 3569 +41 31 083 3569','d','SWITZERLAND',5000,'Ally.Brando@PINTAIL.COM',147,NULL,'1962-06-14','married','F','L: 300,000 and above'),
(928,'Burt','Spielberg','1615 Crackers Crt 361168 Bangalore - India Kar IN','+91 80 012 3733 +91 80 083 3733','hi','INDIA',5000,'Burt.Spielberg@TROGON.COM',148,NULL,'1954-06-09','married','M','E: 90,000 - 109,999'),
(932,'Buster','Bogart','1619 Footloose Rd 361168 Bangalore - India Kar IN','+91 80 012 3741','hi','INDIA',900,'Buster.Bogart@KISKADEE.COM',148,NULL,'1952-08-17','single','M','H: 150,000 - 169,999'),
(496,'Scott','Jordan','1636 Pretty Blvd 361168 Bangalore Kar IN','+91 80 012 4869','hi','INDIA',5000,'Scott.Jordan@WILLET.COM',148,NULL,'1945-01-25','married','F','G: 130,000 - 149,999'),
(605,'Shammi','Pacino','1646 Brazil Blvd 361168 Chennai Tam IN','+91 80 012 4887','hi','INDIA',500,'Shammi.Pacino@BITTERN.COM',148,NULL,'1959-02-05','single','F','B: 30,000 - 49,999'),
(606,'Sharmila','Kazan','1647 Suspense St 361168 Cochin Ker IN','+91 80 012 4889','hi','INDIA',500,'Sharmila.Kazan@BRANT.COM',148,NULL,'1938-02-25','married','F','D: 70,000 - 89,999'),
(607,'Sharmila','Fonda','1648 Anamika St 361168 Cochin Ker IN','+91 80 012 4891','hi','INDIA',500,'Sharmila.Fonda@BUFFLEHEAD.COM',148,NULL,'1949-03-06','single','F','H: 150,000 - 169,999'),
(609,'Shelley','Taylor','1650 Teesri Manjil Crt 361168 Kashmir IN','+91 141 012 4895 +91 141 083 4895','hi','INDIA',3700,'Shelley.Taylor@CURLEW.COM',148,NULL,'1957-03-26','married','F','I: 170,000 - 189,999'),
(615,'Shyam','Plummer','1656 Veterans Rd 361168 Chennai Tam IN','+91 80 012 4907','hi','INDIA',2500,'Shyam.Plummer@VEERY.COM',148,NULL,'1969-04-25','married','M','J: 190,000 - 249,999'),
(621,'Silk','Kurosawa','1662 Talaivar St 361168 Chennai Tam IN','+91 80 012 4919','hi','INDIA',1500,'Silk.Kurosawa@NUTHATCH.COM',148,NULL,'1984-05-05','single','F','G: 130,000 - 149,999'),
(627,'Sivaji','Gielgud','1667 2010 St 61311 Batavia Ker IN','+91 80 012 4931','hi','INDIA',500,'Sivaji.Gielgud@BULBUL.COM',148,NULL,'1949-05-25','married','F','D: 70,000 - 89,999'),
(712,'M. Emmet','Stockwell','Piazza Del Congresso 22 361185 Roma IT','+39 6 012 4501 +39 6 083 4501','i','ITALY',3700,'M.Emmet.Stockwell@COOT.COM',147,NULL,'1983-06-05','single','M','H: 150,000 - 169,999'),
(713,'M. Emmet','Olin','Piazza Quattre Stagioni 4 361186 Roma IT','+39 6 012 4503 +39 6 083 4503','i','ITALY',3700,'M.Emmet.Olin@CORMORANT.COM',147,NULL,'1948-06-24','married','F','F: 110,000 - 129,999'),
(715,'Malcolm','Field','Piazza Svizzera 361187 Roma IT','+39 6 012 4507 +39 6 083 4507','i','ITALY',2400,'Malcolm.Field@DOWITCHER.COM',147,NULL,'1951-07-05','single','F','G: 130,000 - 149,999'),
(717,'Mammutti','Sutherland','Ruella Delle Spiriti 361188 Roma IT','+39 6 012 4511','i','ITALY',500,'Mammutti.Sutherland@TOWHEE.COM',147,NULL,'1974-07-25','married','M','D: 70,000 - 89,999'),
(719,'Mani','Kazan','Via Del Disegno 194 361189 Roma IT','+39 6 012 4515','i','ITALY',500,'Mani.Kazan@TROGON.COM',147,NULL,'1962-08-04','single','M','I: 170,000 - 189,999'),
(721,'Mani','Buckley','Via Delle Capeletti 52 361190 Roma IT','+39 6 012 4519','i','ITALY',500,'Mani.Buckley@TURNSTONE.COM',147,NULL,'1944-08-23','married','M','E: 90,000 - 109,999'),
(727,'Margaret','Ustinov','Via Dello Croce 93 361193 Roma IT','+39 6 012 4531','i','ITALY',1200,'Margaret.Ustinov@ANHINGA.COM',147,NULL,'1949-09-02','single','M','H: 150,000 - 169,999'),
(729,'Margaux','Krige','Via Di Firenze 231 361194 Roma IT','+39 6 012 4535 +39 6 083 4535','i','ITALY',2400,'Margaux.Krige@DUNLIN.COM',147,NULL,'1942-09-23','married','M','F: 110,000 - 129,999'),
(754,'Kevin','Goodman','Via Notoriosa 1942 361234 Ventimiglia IT','+39 10 012 4385','i','ITALY',700,'Kevin.Goodman@WIGEON.COM',147,NULL,'1948-10-22','married','M','E: 90,000 - 109,999'),
(755,'Kevin','Cleveland','Via Notoriosa 1943 361235 Ventimiglia IT','+39 10 012 4387','i','ITALY',700,'Kevin.Cleveland@WILLET.COM',147,NULL,'1981-11-21','married','M','H: 150,000 - 169,999'),
(756,'Kevin','Wilder','Canale Grande 2 361183 Roma IT','+39 6 012 4389','i','ITALY',700,'Kevin.Wilder@AUKLET.COM',147,NULL,'1986-12-02','single','M','G: 130,000 - 149,999'),
(766,'Klaus','Young','Via Del Disegno 194 361223 San Giminiano IT','+39 49 012 4409','i','ITALY',600,'Klaus.Young@OVENBIRD.COM',147,NULL,'1955-01-01','single','M','H: 150,000 - 169,999'),
(767,'Klaus Maria','Russell','Piazza Svizzera 361221 San Giminiano IT','+39 49 012 4411','i','ITALY',100,'KlausMaria.Russell@COOT.COM',147,NULL,'1970-01-20','married','M','C: 50,000 - 69,999'),
(768,'Klaus Maria','MacLaine','Via Dello Croce 93 361227 Tellaro IT','+39 10 012 4413','i','ITALY',100,'KlausMaria.MacLaine@CHUKAR.COM',147,NULL,'1980-01-31','single','M','A: Below 30,000'),
(770,'Kris','Curtis','Ruella Delle Spiriti 361222 San Giminiano IT','+39 49 012 4417','i','ITALY',400,'Kris.Curtis@DOWITCHER.COM',147,NULL,'1955-03-02','single','M','K: 250,000 - 299,999'),
(771,'Kris','de Niro','Via Delle Capeletti 52 361224 San Giminiano IT','+39 49 012 4419','i','ITALY',400,'Kris.deNiro@DUNLIN.COM',147,NULL,'1977-03-21','married','M','E: 90,000 - 109,999'),
(782,'Laurence','Seignier','1971 Limelight Blvd Samutprakarn TH','+66 76 012 4441','th','THAILAND',1200,'Laurence.Seignier@CREEPER.COM',149,NULL,'1983-04-21','married','M','F: 110,000 - 129,999'),
(825,'Alain','Dreyfuss','Harmoniegasse 3 3413 Baden-Daettwil AG CH','+41 56 012 3527','d','SWITZERLAND',500,'Alain.Dreyfuss@VEERY.COM',147,NULL,'1976-04-30','single','M','J: 190,000 - 249,999'),
(826,'Alain','Barkin','Sonnenberg 4 3413 Baden-Daettwil AG CH','+41 57 012 3529','d','SWITZERLAND',500,'Alain.Barkin@VERDIN.COM',147,NULL,'1969-05-20','married','M','A: Below 30,000'),
(828,'Alan','Minnelli','Dr. Herbert Bitto Str 23 3413 Baden-Daettwil AG CH','+41 59 012 3533 +41 59 083 3533','d','SWITZERLAND',2300,'Alan.Minnelli@TANAGER.COM',147,NULL,'1955-07-20','married','M','D: 70,000 - 89,999'),
(829,'Alan','Hunter','Taefernstr 4 3413 Baden-Daettwil AG CH','+41 60 012 3535 +41 60 083 3535','d','SWITZERLAND',2300,'Alan.Hunter@TATTLER.COM',147,NULL,'1959-08-19','married','M','I: 170,000 - 189,999'),
(830,'Albert','Dutt','Kreuzritterplatz 5 3413 Baden-Daettwil AG CH','+41 61 012 3537 +41 61 083 3537','d','SWITZERLAND',3500,'Albert.Dutt@CURLEW.COM',147,NULL,'1947-08-29','single','M','F: 110,000 - 129,999'),
(832,'Albert','Spacek','Zum Freundlichen Nachbarn 5 3413 Baden-Daettwil AG CH','+41 63 012 3541 +41 63 083 3541','d','SWITZERLAND',3500,'Albert.Spacek@DOWITCHER.COM',147,NULL,'1976-09-27','single','M','F: 110,000 - 129,999'),
(833,'Alec','Moranis','Ziegenwiese 3 3413 Baden-Daettwil AG CH','+41 64 012 3543 +41 64 083 3543','d','SWITZERLAND',3500,'Alec.Moranis@DUNLIN.COM',147,NULL,'1934-10-17','married','M','D: 70,000 - 89,999'),
(834,'Alec','Idle','Am Waldrand 5 3413 Baden-Daettwil AG CH','+41 65 012 3545 +41 65 083 3545','d','SWITZERLAND',3500,'Alec.Idle@EIDER.COM',147,NULL,'1964-10-27','single','M','F: 110,000 - 129,999'),
(836,'Alexander','Berenger','Grosse Bahnhostrasse 3 3413 Baden-Daettwil AG CH','+41 67 012 3549','d','SWITZERLAND',1200,'Alexander.Berenger@BECARD.COM',147,NULL,'1952-12-16','married','F','C: 50,000 - 69,999'),
(837,'Alexander','Stanton','Paradeplatz 4 8001 Zuerich ZH CH','+41 2 012 3551 +41 2 083 3551','d','SWITZERLAND',1200,'Alexander.Stanton@AUKLET.COM',147,NULL,'1965-01-15','married','F','D: 70,000 - 89,999'),
(838,'Alfred','Nicholson','Badenerstr 1941 8004 Zuerich ZH CH','+41 3 012 3553 +41 3 083 3553','d','SWITZERLAND',3500,'Alfred.Nicholson@CREEPER.COM',147,NULL,'1985-01-25','single','M','F: 110,000 - 129,999'),
(840,'Ali','Elliott','Le Reduit 7064 Tschiertschen GR CH','+41 81 012 3557','d','SWITZERLAND',1400,'Ali.Elliott@ANHINGA.COM',147,NULL,'1951-03-16','married','M','G: 130,000 - 149,999'),
(841,'Ali','Boyer','Bendlehn 9062 Trogen SG CH','+41 71 012 3559','d','SWITZERLAND',1400,'Ali.Boyer@WILLET.COM',147,NULL,'1951-03-26','single','M','F: 110,000 - 129,999'),
(842,'Ali','Stern','Spisertor 3 7000 St. Gallen SG CH','+41 71 012 3561','d','SWITZERLAND',1400,'Ali.Stern@YELLOWTHROAT.COM',147,NULL,'1977-04-15','married','M','E: 90,000 - 109,999'),
(844,'Alice','Julius','Roessligasse 4 8001 Zurich ZH CH','+41 6 012 3565','d','SWITZERLAND',700,'Alice.Julius@BITTERN.COM',147,NULL,'1944-05-15','married','F','D: 70,000 - 89,999'),
(845,'Ally','Fawcett','Zum Froehlichen Schweizer 3 8000 Zurich ZH CH','+41 7 012 3567 +41 7 083 3567','d','SWITZERLAND',5000,'Ally.Fawcett@PLOVER.COM',147,NULL,'1944-05-25','single','F','A: Below 30,000'),
(847,'Ally','Streep','Bruppacher Str 3 3413 Baden-Daettwil AG CH','+41 68 012 3571 +41 68 083 3571','d','SWITZERLAND',5000,'Ally.Streep@PIPIT.COM',147,NULL,'1942-07-14','married','M','A: Below 30,000'),
(848,'Alonso','Olmos','Limmatquai 8001 Zuerich ZH CH','+41 5 012 3573 +41 5 083 3573','d','SWITZERLAND',1800,'Alonso.Olmos@PHALAROPE.COM',147,NULL,'1948-07-24','single','F','F: 110,000 - 129,999'),
(849,'Alonso','Kaurusmdki','Dreikoenigsstr 3 8001 Zurich ZH CH','+41 8 012 3575 +41 8 083 3575','d','SWITZERLAND',1800,'Alonso.Kaurusmdki@PHOEBE.COM',147,NULL,'1980-08-13','married','F','E: 90,000 - 109,999'),
(850,'Amanda','Finney','Pfannenstilstr 13 8132 Egg ZH CH','+41 1 012 3577 +41 1 083 3577','d','SWITZERLAND',2300,'Amanda.Finney@STILT.COM',147,NULL,'1991-08-23','single','M','J: 190,000 - 249,999'),
(851,'Amanda','Brown','Kreuzstr 32 8032 Zurich ZH CH','+41 9 012 3579 +41 9 083 3579','d','SWITZERLAND',2300,'Amanda.Brown@THRASHER.COM',147,NULL,'1951-09-12','married','F','B: 30,000 - 49,999'),
(852,'Amanda','Tanner','1539 Stripes Rd 3413 Baden-Daettwil AG CH','+41 69 012 3581 +41 69 083 3581','d','SWITZERLAND',2300,'Amanda.Tanner@TEAL.COM',147,NULL,'1953-09-22','single','F','G: 130,000 - 149,999'),
(853,'Amrish','Palin','1540 Stripes Crt 3413 Baden-Daettwil AG CH','+41 70 012 3583','d','SWITZERLAND',400,'Amrish.Palin@EIDER.COM',147,NULL,'1977-10-12','married','F','I: 170,000 - 189,999'),
(905,'Billy','Hershey','1592 Silverado St 361123 Bangalore Kar IN','+91 80 012 3687','hi','INDIA',1400,'Billy.Hershey@BULBUL.COM',148,NULL,'1987-10-22','single','F','G: 130,000 - 149,999'),
(906,'Billy','Dench','1593 Silverado St 361112 Bangalore Kar IN','+91 80 012 3689','hi','INDIA',1400,'Billy.Dench@CARACARA.COM',148,NULL,'1958-11-11','married','M','I: 170,000 - 189,999'),
(909,'Blake','Mastroianni','1596 Commando Blvd 361126 Bangalore Kar IN','+91 80 012 3695','hi','INDIA',1200,'Blake.Mastroianni@FLICKER.COM',148,NULL,'1949-11-21','single','M','D: 70,000 - 89,999'),
(911,'Bo','Dickinson','1598 Legend St 361149 Bangalore Kar IN','+91 80 012 3699 +91 80 083 3699','hi','INDIA',5000,'Bo.Dickinson@TANAGER.COM',148,NULL,'1981-12-11','married','M','H: 150,000 - 169,999'),
(912,'Bo','Ashby','1599 Legend Rd 361128 Bangalore Kar IN','+91 80 012 3701 +91 80 083 3701','hi','INDIA',5000,'Bo.Ashby@TATTLER.COM',148,NULL,'1956-12-21','single','M','I: 170,000 - 189,999'),
(913,'Bob','Sharif','1600 Target Crt 361191 Bangalore Kar IN','+91 80 012 3703 +91 80 083 3703','hi','INDIA',5000,'Bob.Sharif@TEAL.COM',148,NULL,'1985-01-10','married','M','F: 110,000 - 129,999'),
(916,'Brian','Douglas','1603 Rebel St 361129 Bangalore Kar IN','+91 80 012 3709','hi','INDIA',500,'Brian.Douglas@AVOCET.COM',148,NULL,'1978-01-20','single','M','J: 190,000 - 249,999'),
(917,'Brian','Baldwin','1604 Volunteers Rd 361121 Bangalore Kar IN','+91 80 012 3711','hi','INDIA',500,'Brian.Baldwin@BECARD.COM',148,NULL,'1975-02-09','married','M','E: 90,000 - 109,999'),
(919,'Brooke','Michalkow','1606 Volunteers Blvd 361196 Bangalore Kar IN','+91 80 012 3715','hi','INDIA',3500,'Brooke.Michalkow@GROSBEAK.COM',148,NULL,'1962-02-19','single','M','D: 70,000 - 89,999'),
(920,'Bruce','Hulce','1607 Abwdrts St 361114 Bangalore Kar IN','+91 80 012 3717','hi','INDIA',3500,'Bruce.Hulce@JACANA.COM',148,NULL,'1972-03-10','married','M','F: 110,000 - 129,999'),
(921,'Bruce','Dunaway','1608 Amadeus St 361198 Bangalore Kar IN','+91 80 012 3719 +91 80 083 3719','hi','INDIA',3500,'Bruce.Dunaway@JUNCO.COM',148,NULL,'1948-03-20','single','F','F: 110,000 - 129,999'),
(923,'Bruno','Slater','1610 Betrayal Crt 361119 Bangalore Kar IN','+91 80 012 3723 +91 80 083 3723','hi','INDIA',5000,'Bruno.Slater@THRASHER.COM',148,NULL,'1960-04-09','married','F','G: 130,000 - 149,999'),
(924,'Bruno','Montand','1611 Carmen Blvd 361118 Bangalore Kar IN','+91 80 012 3725 +91 80 083 3725','hi','INDIA',5000,'Bruno.Montand@TOWHEE.COM',148,NULL,'1934-04-20','single','F','D: 70,000 - 89,999'),
(927,'Bryan','Belushi','1614 Crackers Rd 361168 Bangalore - India Kar IN','+91 80 012 3731 +91 80 083 3731','hi','INDIA',2300,'Bryan.Belushi@TOWHEE.COM',148,NULL,'1961-05-10','married','M','I: 170,000 - 189,999'),
(929,'Burt','Neeson','1616 Crackers Blvd 361168 Bangalore - India Kar IN','+91 80 012 3735 +91 80 083 3735','hi','INDIA',5000,'Burt.Neeson@TURNSTONE.COM',148,NULL,'1978-06-19','single','M','F: 110,000 - 129,999'),
(930,'Buster','Jackson','1617 Crackers St 361168 Bangalore - India Kar IN','+91 80 012 3737','hi','INDIA',900,'Buster.Jackson@KILLDEER.COM',148,NULL,'2024-07-08','married','M','A: Below 30,000'),
(931,'Buster','Edwards','1618 Footloose St 361168 Bangalore - India Kar IN','+91 80 012 3739','hi','INDIA',900,'Buster.Edwards@KINGLET.COM',148,NULL,'1947-08-08','married','M','F: 110,000 - 129,999'),
(934,'C. Thomas','Nolte','1621 Gargon! Blvd 361168 Bangalore - India Kar IN','+91 80 012 3745','hi','INDIA',600,'C.Thomas.Nolte@PHOEBE.COM',148,NULL,'1959-09-07','married','M','H: 150,000 - 169,999'),
(980,'Daniel','Loren','1667 2010 St 61311 Batavia IL IN','+91 80 012 3837','hi','INDIA',200,'Daniel.Loren@REDSTART.COM',148,NULL,'1970-09-17','single','M','F: 110,000 - 129,999'),
(981,'Daniel','Gueney','1668 Chong Tao 111181 Beijing CN','+86 10 012 3839','zhs','CHINA',200,'Daniel.Gueney@REDPOLL.COM',148,NULL,'1973-10-07','married','M','K: 250,000 - 299,999'),
(119,'Maurice','Hasan','3310 Dixie Ct 48601 Saginaw MI US','+1 517 123 4191','us','AMERICA',200,'Maurice.Hasan@STILT.COM',145,'-83.89048,43.366886','1965-12-17','married','M','G: 130,000 - 149,999'),
(124,'Diane','Mason','6654 W Lafayette St 48226 Detroit MI US','+1 313 123 4222','us','AMERICA',200,'Diane.Mason@TROGON.COM',145,'-83.049285,42.330868','1981-03-16','married','F','K: 250,000 - 299,999'),
(128,'Isabella','Reed','3100 E Eisenhower Pky # 100 48108 Ann Arbor MI US','+1 313 123 4230','us','AMERICA',300,'Isabella.Reed@BRANT.COM',145,'-83.716754,42.244284','1954-05-16','married','F','J: 190,000 - 249,999'),
(133,'Kristin','Malden','301 E Genesee Ave 48607 Saginaw MI US','+1 517 123 4253','us','AMERICA',400,'Kristin.Malden@GODWIT.COM',145,'-83.93747,43.432862','1950-08-14','married','F','C: 50,000 - 69,999'),
(137,'Elia','Brando','555 John F Kennedy Rd 52002 Dubuque IA US','+1 319 123 4271','us','AMERICA',500,'Elia.Brando@JUNCO.COM',145,'-90.72012,42.496103','1951-10-23','single','M','H: 150,000 - 169,999'),
(142,'Sachin','Spielberg','1691 Asbury Rd 52001 Dubuque IA US','+1 319 123 4288','us','AMERICA',500,'Sachin.Spielberg@GADWALL.COM',145,'-90.69686,42.500903','1971-01-11','married','M','C: 50,000 - 69,999'),
(146,'Elia','Fawcett','8989 N Port Washington Rd 53217 Milwaukee WI US','+1 414 123 4307','us','AMERICA',500,'Elia.Fawcett@JACANA.COM',145,'-87.91422,43.180714','1963-03-12','married','F','L: 300,000 and above'),
(168,'Hema','Voight','113 N 1St St 55401 Minneapolis MN US','+1 612 123 4408','us','AMERICA',1200,'Hema.Voight@PHALAROPE.COM',145,'-93.26806,44.984747','1950-03-16','single','M','H: 150,000 - 169,999'),
(172,'Harry Mean','Peckinpah','314 W Superior St # 1015 55802 Duluth MN US','+1 218 123 4429','us','AMERICA',1200,'HarryMean.Peckinpah@VERDIN.COM',145,NULL,'1959-05-15','single','M','I: 170,000 - 189,999'),
(177,'Gerhard','Seignier','49 N Pine Ave 12203 Albany NY US','+1 518 123 4459','us','AMERICA',1200,'Gerhard.Seignier@JACANA.COM',149,'-73.7927,42.668507','1978-08-03','married','M','E: 90,000 - 109,999'),
(181,'Lauren','Hershey','2360 Maxon Rd 12308 Schenectady NY US','+1 518 123 4496','us','AMERICA',1200,'Lauren.Hershey@LIMPKIN.COM',149,'-73.91984,42.833987','1965-10-12','single','F','H: 150,000 - 169,999'),
(186,'Meena','Alexander','Po Box 2152 14240 Buffalo NY US','+1 716 123 4605','us','AMERICA',1200,'Meena.Alexander@PARULA.COM',149,'-78.82672,42.884822','1961-12-11','single','F','K: 250,000 - 299,999'),
(190,'Gena','Curtis','18 Glenridge Rd 12302 Schenectady NY US','+1 518 123 4624','us','AMERICA',1200,'Gena.Curtis@PLOVER.COM',149,'-73.92997,42.868566','1982-02-09','single','M','J: 190,000 - 249,999'),
(213,'Luchino','Bradford','1401 W Warren Rd 16701 Bradford PA US','+1 814 123 4722','us','AMERICA',1500,'Luchino.Bradford@PARULA.COM',149,'-78.651424,41.905571','1976-04-24','married','M','A: Below 30,000'),
(217,'Bryan','Huston','4901 Locust Ln 17109 Harrisburg PA US','+1 717 123 4739','us','AMERICA',2300,'Bryan.Huston@PYRRHULOXIA.COM',149,'-76.80639,40.293213','1973-06-23','married','F','B: 30,000 - 49,999');

-- ordersデータ登録
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2458,'2007-08-17 04:34:12','direct',101,0,78279.6,153,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2397,'2007-11-20 05:41:54','direct',102,1,42283.2,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2454,'2007-10-03 06:49:34','direct',103,1,6653.4,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2354,'2008-07-15 07:18:23','direct',104,0,46257,155,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2358,'2008-01-09 08:03:12','direct',105,2,7826,155,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2381,'2008-05-15 09:59:08','direct',106,3,23034.6,156,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2440,'2007-09-01 10:53:06','direct',107,3,70576.9,156,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2357,'2006-01-09 11:19:44','direct',108,5,59872.4,158,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2394,'2008-02-11 12:22:35','direct',109,5,21863,158,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2435,'2007-09-03 12:22:53','direct',144,6,62303,159,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2455,'2007-09-21 00:34:11','direct',145,7,14087.5,160,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2379,'2007-05-16 15:22:24','direct',146,8,17848.2,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2396,'2006-02-02 16:34:56','direct',147,8,34930,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2406,'2007-06-29 17:41:20','direct',148,8,2854.2,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2434,'2007-09-13 18:49:30','direct',149,8,268651.8,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2436,'2007-09-02 19:18:04','direct',116,8,6394.8,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2446,'2007-07-27 20:03:08','direct',117,8,103679.3,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2447,'2008-07-27 21:59:10','direct',101,8,33893.6,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2432,'2007-09-14 22:53:40','direct',102,10,10523,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2433,'2007-09-13 23:19:00','direct',103,10,78,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2355,'2006-01-27 00:22:51','online',104,8,94513.5,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2356,'2008-01-27 00:22:41','online',105,5,29473.8,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2359,'2006-01-09 12:34:13','online',106,9,5543.1,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2360,'2007-11-15 03:22:31','online',107,4,990.4,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2361,'2007-11-14 04:34:21','online',108,8,120131.3,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2362,'2007-11-14 05:41:10','online',109,4,92829.4,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2363,'2007-10-24 06:49:56','online',144,0,10082.3,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2364,'2007-08-29 07:18:45','online',145,4,9500,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2365,'2007-08-29 08:03:34','online',146,9,27455.3,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2366,'2007-08-29 09:59:23','online',147,5,37319.4,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2367,'2008-06-28 10:53:32','online',148,10,144054.8,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2368,'2008-06-27 11:19:43','online',149,10,60065,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2369,'2007-06-27 12:22:54','online',116,0,11097.4,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2370,'2008-06-27 13:22:11','online',117,4,126,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2371,'2007-05-16 14:34:56','online',118,6,79405.6,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2372,'2007-02-27 15:22:33','online',119,9,16447.2,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2373,'2008-02-27 16:34:51','online',120,4,416,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2374,'2008-02-27 17:41:45','online',121,0,4797,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2375,'2007-02-26 18:49:50','online',122,2,103834.4,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2376,'2007-06-07 19:18:08','online',123,6,11006.2,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2377,'2007-06-07 20:03:01','online',141,5,38017.8,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2378,'2007-05-24 21:59:10','online',142,5,25691.3,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2380,'2007-05-16 22:53:02','online',143,3,27132.6,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2382,'2008-05-14 23:19:03','online',144,8,71173,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2383,'2008-05-13 00:22:30','online',145,8,36374.7,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2384,'2008-05-13 01:22:34','online',146,3,29249.1,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2385,'2007-12-09 02:34:11','online',147,4,295892,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2386,'2007-12-07 03:22:34','online',148,10,21116.9,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2387,'2007-03-12 04:34:56','online',149,5,52758.9,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2388,'2007-06-05 05:41:12','online',150,4,282694.3,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2389,'2008-06-05 06:49:43','online',151,4,17620,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2390,'2007-11-19 07:18:50','online',152,9,7616.8,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2391,'2006-02-28 08:03:03','direct',153,2,48070.6,156,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2392,'2007-07-22 09:59:57','direct',154,9,26632,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2393,'2008-02-11 10:53:19','direct',155,4,23431.9,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2395,'2006-02-03 11:19:11','direct',156,3,68501,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2398,'2007-11-20 12:22:53','direct',157,9,7110.3,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2399,'2007-11-20 13:22:38','direct',158,0,25270.3,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2400,'2007-07-10 14:34:29','direct',159,2,69286.4,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2401,'2007-07-10 15:22:53','direct',160,3,969.2,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2402,'2007-07-02 16:34:44','direct',161,8,600,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2403,'2007-07-02 05:49:13','direct',162,0,220,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2404,'2007-07-02 05:49:13','direct',163,6,510,158,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2405,'2007-07-02 05:49:13','direct',164,5,1233,159,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2407,'2007-06-29 20:03:21','direct',165,9,2519,155,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2408,'2007-06-29 21:59:31','direct',166,1,309,158,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2409,'2007-06-29 22:53:41','direct',167,2,48,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2410,'2008-05-24 23:19:51','direct',168,6,45175,156,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2411,'2007-05-25 00:22:10','direct',169,8,15760.5,156,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2412,'2006-03-30 01:22:09','direct',170,9,66816,158,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2413,'2008-03-30 02:34:04','direct',101,5,48552,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2414,'2007-03-30 03:22:40','direct',102,8,10794.6,153,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2415,'2006-03-30 04:34:50','direct',103,6,310,161,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2416,'2007-03-30 05:41:20','direct',104,6,384,160,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2417,'2007-03-21 06:49:10','direct',105,5,1926.6,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2418,'2004-03-21 07:18:21','direct',106,4,5546.6,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2419,'2007-03-21 08:03:32','direct',107,3,31574,160,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2420,'2007-03-14 09:59:43','direct',108,2,29750,160,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2421,'2007-03-13 10:53:54','direct',109,1,72836,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2422,'2007-12-17 11:19:55','direct',144,2,11188.5,153,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2423,'2007-11-22 01:22:33','direct',145,3,10367.7,160,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2424,'2007-11-22 01:22:33','direct',146,4,13824,153,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2425,'2006-11-17 14:34:22','direct',147,5,1500.8,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2426,'2006-11-17 15:22:11','direct',148,6,7200,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2427,'2007-11-10 16:34:22','direct',149,7,9055,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2428,'2007-11-10 17:41:34','direct',116,8,14685.8,null,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2429,'2007-11-10 18:49:25','direct',117,9,50125,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2430,'2007-10-02 19:18:36','direct',101,8,29669.9,159,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2431,'2006-09-14 20:03:04','direct',102,1,5610.6,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2437,'2006-09-01 21:59:15','direct',103,4,13550,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2438,'2007-09-01 22:53:26','direct',104,0,5451,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2439,'2007-08-31 23:19:37','direct',105,1,22150.1,159,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2441,'2008-08-02 00:22:48','direct',106,5,2075.2,160,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2442,'2006-07-28 01:22:59','direct',107,9,52471.9,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2443,'2006-07-28 02:34:16','direct',108,0,3646,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2444,'2007-07-28 03:22:27','direct',109,1,77727.2,155,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2445,'2006-07-28 04:34:38','direct',144,8,5537.8,158,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2448,'2007-06-19 05:41:49','direct',145,5,1388,158,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2449,'2007-06-14 06:49:07','direct',146,6,86,155,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2450,'2007-04-12 07:18:10','direct',147,3,1636,159,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2451,'2007-12-18 08:03:52','direct',148,7,10474.6,154,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2452,'2007-10-07 09:59:43','direct',149,5,12589,159,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2453,'2007-10-05 10:53:34','direct',116,0,129,153,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2456,'2006-11-08 10:53:25','direct',117,0,3878.4,163,null);
INSERT INTO orders (order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id) VALUES (2457,'2007-11-01 12:22:16','direct',118,5,21586.2,159,null);

