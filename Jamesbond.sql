CREATE TABLE pratheep.author (
 id INT PRIMARY KEY,
 name VARCHAR(100)
 );
 
 CREATE TABLE pratheep.post(
 id INT PRIMARY KEY NOT NULL,
 name VARCHAR(100),
 authorid INT ,
 createdts DATETIME,
 FOREIGN KEY (authorid)REFERENCES  author(id)) ;
 
 CREATE TABLE pratheep.USER (
 id INT PRIMARY KEY,
 name VARCHAR(100) ) ;
 
 CREATE TABLE pratheep.comment (
 id INT PRIMARY KEY NOT NULL,
 content VARCHAR(1000),
 postid INT ,
 createdts DATETIME ,
 userid INT ,
 FOREIGN KEY(postid) REFERENCES post(id),
 FOREIGN KEY(userid) REFERENCES  pratheep.user(id) 
  );
  
  DESC pratheep.author;
INSERT INTO pratheep.author VALUES(1,'James Bond');
INSERT INTO pratheep.author VALUES(2,'James');

DESC pratheep.user;
INSERT INTO pratheep.user VALUES(1,'Pratheep');
INSERT INTO pratheep.user VALUES(2,'Raju');
INSERT INTO pratheep.user VALUES(3,'Pavani');

INSERT INTO pratheep.post  VALUES(1,'Pratheep went to outside',1,'2021-10-05 10:05:18');
INSERT INTO pratheep.post  VALUES(2,'Raju is very intelligent',2,'2021-10-05 10:08:18');
INSERT INTO pratheep.post  VALUES(3,'Pavani learns quickly',1,'2021-10-05 10:10:18');
INSERT INTO pratheep.post  VALUES(4,'developers team is good',1,'2021-10-05 10:12:34');
INSERT INTO pratheep.post  VALUES(5,'pratheep will come back',2,'2021-10-05 10:18:15');
INSERT INTO pratheep.post  VALUES(6,'Raju take the lead of team',1,'2021-10-05 10:31:25');
INSERT INTO pratheep.post  VALUES(7,'raju, pratheep and pavani are good friends',2,'2021-10-05 10:35:08');

INSERT INTO pratheep.comment VALUES(1,'You Are Right',1,'2021-10-05 12:08:47',1);
INSERT INTO pratheep.comment VALUES(2,'Raju is not fine',2,'2021-10-05 12:08:51',2);
INSERT INTO pratheep.comment VALUES(3,'grate teamwork',1,'2021-10-05 12:09:25',3);
INSERT INTO pratheep.comment VALUES(4,'team will complete the work asap',1,'2021-10-05 12:11:28',1);
INSERT INTO pratheep.comment VALUES(5,'You Are Right',1,'2021-10-05 12:20:07',1);
INSERT INTO pratheep.comment VALUES(6,'Raju is not fine',2,'2021-10-05 12:22:31',2);
INSERT INTO pratheep.comment VALUES(7,'grate teamwork',1,'2021-10-05 12:34:25',3);
INSERT INTO pratheep.comment VALUES(8,'team will complete the work asap',1,'2021-10-05 12:53:54',1);
INSERT INTO pratheep.comment VALUES(9,'You Are Right',1,'2021-10-05 13:10:07',1);
INSERT INTO pratheep.comment VALUES(10,'Raju is not fine',2,'2021-10-05 13:20:31',2);
INSERT INTO pratheep.comment VALUES(11,'grate teamwork',1,'2021-10-05 13:34:25',3);
INSERT INTO pratheep.comment VALUES(12,'team will complete the work asap',1,'2021-10-05 13:53:54',1);
INSERT INTO pratheep.comment VALUES(13,'You Are Right',1,'2021-10-05 14:20:03',1);
INSERT INTO pratheep.comment VALUES(14,'Raju is not fine',2,'2021-10-05 14:21:31',2);
INSERT INTO pratheep.comment VALUES(15,'grate teamwork',1,'2021-10-05 14:29:25',3);
INSERT INTO pratheep.comment VALUES(16,'team will complete the work asap',1,'2021-10-05 14:50:54',1);

SELECT a.name,p.name AS post,c.content,c.`createdts`,c.`id` AS cid
FROM pratheep.author a
INNER JOIN pratheep.post p ON a.id = p.authorid
INNER JOIN pratheep.comment c ON c.postid=p.authorid 
WHERE a.name = 'James Bond' ORDER BY c.`createdts` DESC LIMIT 10;