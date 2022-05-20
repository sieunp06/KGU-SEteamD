DROP DATABASE booksys ;

CREATE DATABASE booksys ;

USE booksys ;

CREATE TABLE User (
	id		VARCHAR(50) NOT NULL,
        pw		VARCHAR(50) NOT NULL,
        name	VARCHAR(32) NOT NULL,
        phoneNumber CHAR(13) NOT NULL,
        PRIMARY KEY(id),
        CONSTRAINT CHK_VALID_PN CHECK(phoneNumber LIKE '010-%-%') /*phone nuber form constraint*/
) ;

CREATE TABLE `Table` (
       number	     INT NOT NULL, /*table Number is unique value*/
       seats	     INT NOT NULL, /*the number of seats*/
       PRIMARY KEY(number),
	   CONSTRAINT CHK_VALID_TABLE CHECK(number>=1 AND number <= 10)
) ;

CREATE TABLE Reservation (
       user_id	    VARCHAR(50) NOT NULL,
       table_number	int		NOT NULL,
       covers	    int 	NOT NULL,
       date	    DATE 		NOT NULL,
       time	    TIME		NOT NULL,
       arrivalTime  TIME,
       PRIMARY KEY(user_id, date, time),
       FOREIGN KEY(user_id) REFERENCES User(id),
       FOREIGN KEY(table_number) REFERENCES `Table`(number)
) ;
/*table data*/
INSERT INTO `Table` (number, seats) VALUES (1, 2) ;
INSERT INTO `Table` (number, seats) VALUES (2, 2) ;
INSERT INTO `Table` (number, seats) VALUES (3, 2) ;
INSERT INTO `Table` (number, seats) VALUES (4, 2) ;
INSERT INTO `Table` (number, seats) VALUES (5, 4) ;
INSERT INTO `Table` (number, seats) VALUES (6, 4) ;
INSERT INTO `Table` (number, seats) VALUES (7, 4) ;
INSERT INTO `Table` (number, seats) VALUES (8, 4) ;
INSERT INTO `Table` (number, seats) VALUES (9, 4) ;
INSERT INTO `Table` (number, seats) VALUES (10, 4) ;

/*user data*/
INSERT INTO user VALUES("rlaalswns95", "rlaalswns1002", "김민준", "010-2671-3852");
INSERT INTO user VALUES("qkrtjwns01", "qkrtjwns0315", "박서준", "010-3954-2219");
INSERT INTO user VALUES("dhtjdus040", "dhtjdus0804", "오서연", "010-1093-4587");
INSERT INTO user VALUES("rlaehdbs02", "rlaehdbs1125", "김도윤", "010-2845-5496");
INSERT INTO user VALUES("rkdalstj2000", "rkdalstj0109", "강민서", "010-1368-4690");
INSERT INTO user VALUES("wjdgkwns91", "wjsgkwns1225", "정하준", "010-3964-1294");
INSERT INTO user VALUES("guscodnjs95", "guscodnjs0528", "현채원", "010-2893-5948");
INSERT INTO user VALUES("rlawlgh1996", "rlawlgh1026", "김지호", "010-6194-1294");
INSERT INTO user VALUES("rlaehgus02", "rlaehgus0629", "김도현", "010-8333-4832");
INSERT INTO user VALUES("tlstnqls1999", "tlstnqls1103", "신수빈", "010-1294-5497");
INSERT INTO user VALUES("whgkdbs87", "whgkdbs0426", "조하윤", "010-8296-6906");
INSERT INTO user VALUES("chldmstj00", "chldmstj1215", "최은서", "010-2845-6667");
INSERT INTO user VALUES("dladbstj1997", "dladbstj0410", "신묘한", "010-7142-2345");
INSERT INTO user VALUES("wjdwlswn012", "wjdwlswn2001", "정진주", "010-7353-9009");
INSERT INTO user VALUES("eijlswns77", "eijlswns1938", "한상진", "010-2523-5226");
INSERT INTO user VALUES("chlwlgn050", "chlwlgn1117", "최지후", "010-8142-6709");

/*reservation data*/
INSERT INTO reservation VALUES('dhtjdus040', 3, 2, "2021-3-22", "15:30:00", "15:28:37");
INSERT INTO reservation VALUES('chlwlgn050', 6, 4, "2021-05-05", "19:30:00", "19:25:45");
INSERT INTO reservation VALUES('guscodnjs95', 7, 3, "2021-10-02", "20:00:00", "20:02:24");
INSERT INTO reservation VALUES('wjdgkwns91', 10, 3, "2021-02-09", "20:30:00", "20:31:34");
INSERT INTO reservation VALUES('wjdgkwns91', 10, 4, "2021-05-08", "19:30:00", "19:35:25");
INSERT INTO reservation VALUES('whgkdbs87', 10, 4, "2021-05-15", "13:00:00", "13:01:15");
INSERT INTO reservation VALUES('whgkdbs87', 1, 2, "2021-06-27", "16:30:00", "16:29:53");
INSERT INTO reservation VALUES('tlstnqls1999', 4, 2, "2021-09-12", "13:00:00", "13:02:29");
INSERT INTO reservation VALUES('tlstnqls1999', 8, 4, "2021-10-31", "14:30:00", "14:31:56");
INSERT INTO reservation VALUES('rlaalswns95', 2, 2, "2021-04-27", "17:30:00", "17:28:53");
INSERT INTO reservation VALUES('rlaalswns95', 3, 2, "2021-08-25", "20:00:00", "20:02:34");
INSERT INTO reservation VALUES('rlaehdbs02', 7, 3, "2021-01-01", "15:00:00", "15:10:27");
INSERT INTO reservation VALUES('rlaehdbs02', 7, 4, "2021-11-11", "20:30:00", "20:31:15");
INSERT INTO reservation VALUES('rlaehdbs02', 8, 3, "2021-12-25", "20:00:00", "20:04:47");
INSERT INTO reservation VALUES('eijlswns77', 10, 4, "2021-02-04", "19:00:00", "19:02:47");
INSERT INTO reservation VALUES('eijlswns77', 7, 3, "2021-05-08", "17:30:00", "17:29:01");
INSERT INTO reservation VALUES('eijlswns77', 2, 2, "2021-12-25", "19:30:00", "19:31:47");
INSERT INTO reservation VALUES('rkdalstj2000', 3, 2, "2021-01-29", "20:30:00", "20:31:23");
INSERT INTO reservation VALUES('rkdalstj2000', 5, 3, "2021-03-25", "21:00:00", "21:04:43");
INSERT INTO reservation VALUES('rkdalstj2000', 9, 4, "2021-06-18", "20:30:00", "20:29:14");
INSERT INTO reservation VALUES('rkdalstj2000', 9, 4, "2021-12-25", "22:00:00", "20:05:37");
INSERT INTO reservation VALUES('dladbstj1997', 10, 4, "2021-05-15", "13:00:00", "13:05:29");
INSERT INTO reservation VALUES('dladbstj1997', 3, 2, "2021-07-31", "14:00:00", "14:00:45");
INSERT INTO reservation VALUES('dladbstj1997', 3, 2, "2021-08-30", "14:00:00", "14:02:26");
INSERT INTO reservation VALUES('dladbstj1997', 1, 2, "2021-11-11", "20:00:00", "20:01:34");
INSERT INTO reservation VALUES('dladbstj1997', 6, 3, "2021-12-19", "21:00:00", "21:07:56");
INSERT INTO reservation VALUES('wjdwlswn012', 5, 3, "2021-05-05", "13:00:00", "13:02:21");
INSERT INTO reservation VALUES('wjdwlswn012', 7, 3, "2021-07-20", "20:00:00", "20:06:46");
INSERT INTO reservation VALUES('wjdwlswn012', 10, 4, "2021-08-14", "18:30:00", "18:07:43");
INSERT INTO reservation VALUES('wjdwlswn012', 2, 2, "2021-09-27", "19:00:00", "19:02:21");
INSERT INTO reservation VALUES('wjdwlswn012', 5, 3, "2021-12-10", "19:00:00", "18:59:14");
INSERT INTO reservation VALUES('qkrtjwns01', 1, 2, "2021-01-25", "15:00:00", "15:01:20");
INSERT INTO reservation VALUES('qkrtjwns01', 5, 3, "2021-03-05", "20:00:00", "20:00:13");
INSERT INTO reservation VALUES('qkrtjwns01', 10, 3, "2021-07-15", "13:00:00", "13:00:01");
INSERT INTO reservation VALUES('qkrtjwns01', 5, 3, "2021-08-05", "13:00:00", "13:02:21");
INSERT INTO reservation VALUES('qkrtjwns01', 10, 4, "2021-10-15", "19:00:00", "19:02:24");
INSERT INTO reservation VALUES('qkrtjwns01', 5, 3, "2021-12-25", "20:00:00", "20:02:21");
INSERT INTO reservation VALUES('chldmstj00', 7, 3, "2020-12-30", "14:30:00", "14:32:29");
INSERT INTO reservation VALUES('chldmstj00', 10, 3, "2021-01-15", "13:30:00", "13:31:29");
INSERT INTO reservation VALUES('chldmstj00', 2, 2, "2021-02-10", "13:00:00", "13:05:22");
INSERT INTO reservation VALUES('chldmstj00', 1, 2, "2021-03-11", "14:00:00", "13:59:12");
INSERT INTO reservation VALUES('chldmstj00', 3, 2, "2021-03-27", "14:30:00", "14:31:23");
INSERT INTO reservation VALUES('chldmstj00', 5, 4, "2021-05-03", "19:30:00", "19:25:57");
INSERT INTO reservation VALUES('chldmstj00', 2, 2, "2021-07-31", "19:30:00", "19:32:35");
INSERT INTO reservation VALUES('chldmstj00', 7, 4, "2021-10-02", "20:00:00", "20:03:25");
INSERT INTO reservation VALUES('chldmstj00', 9, 4, "2021-11-18", "14:00:00", "13:58:01");
INSERT INTO reservation VALUES('chldmstj00', 4, 2, "2021-12-25", "20:00:00", "20:02:25");