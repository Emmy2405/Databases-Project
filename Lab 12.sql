drop table if exists FOLLOW;--to see if the follow table already exists
drop table if exists LIKES;--to see if the Likes table already exists
drop table if exists PHOTOS;--to see if the photos table already exists
drop table if exists USERS;--to see if the users table already exists


--creating the users table
create table USERS ( 
User_ID text primary key, --creating user id variable and setting it as the primary key
Username text not null unique,  --creating username variable 
created_at date --creating created at  variable
);


--creating the photos table
create table PHOTOS ( 
Photo_ID int primary key,  --creating photo id variable and setting it as the primary key
image_URL text, --creating image URL variable
User_ID text, --creating user id variable
published_date date, --creating published date  variable
constraint user_fk foreign key (User_ID) references USERS (User_ID)
);


--creating the likes table
create table LIKES ( 
User_ID text,  --creating user id variable and setting it as the primary key
Photo_ID int, --creating photo id variable
date_of_like date, --creating  variable
primary key(User_ID, Photo_ID),
constraint user_photo_fk foreign key (User_ID) references USERS (User_ID),
constraint photo_likes_fk foreign key (Photo_ID) references PHOTOS (Photo_ID)
);
--creating the follow table
create table FOLLOW (
follower_ID text ,
followee_ID text,
follow_date_time timestamp,
primary key (follower_ID, followee_ID),
constraint follower_ID_fk foreign key (follower_ID) references USERS(User_ID),
constraint followee_ID_fk foreign key (followee_ID) references USERS(User_ID)
);

--entering data into USERS table 
insert into USERS (User_ID, Username, created_at)
values 
('C23310757','Emmy.com','2024-09-24'),
('C23471089','lucky_cat','2023-09-07'),
('C23306742','sam_smith','2017-10-24'),
('C23304330','Jack_walsh','2023-01-13'),
('C23105671','anna1234','2019-06-21'),
('C24534534', 'psnazel0','2020-11-20'),
('C22424324','skunzler1','2021-04-23'),
('C24344434','narguile2',NULL),
('C23445544','zadolfson3','2018-02-12'),
('C23466566','ahammerman4','2021-08-15'),
('C25675677','tfiander5','2023-09-17'),
('C27457677','ahalse6','2017-11-03'),
('C26546546','hruff7','2019-06-27'),
('C24356555','jgorsse8',NULL),
('C24327457','kkindred9','2020-05-03'),
('C23315435','priscila.p','2024-10-04'),
('C23423423','beatrice.04','2023-06-03'),
('C23342344','faith06','2016-10-24'),
('C23324447','mera3004','2028-01-13'),
('C23123423','anmool75',NULL),
('C24543244', 'khabibaS','2029-11-20'),
('C22422343','shifa.05','2024-04-23'),
('C24343243','maryjane34','2023-11-07'),
('C23243424','sayo45','2018-03-12'),
('C23424234','dami64','2023-08-16'),
('C23758749','samsmith34','2023-11-07'),
('C23904758','lily26','2019-03-11'),
('C26327398','icecream99','2024-10-31');



--entering data into PHOTOS table
insert into PHOTOS (Photo_ID, image_URL, User_ID, published_date)
values 
('1234567','url.com1','C23310757','2024-09-25'),
('1246894','url.com2','C23471089','2023-10-08'),
('3578694','url.com3','C23306742','2017-11-24'),
('2354674','url.com4','C23304330','2023-02-14'),
('6489663','url.com5','C23105671','2019-06-21'),
('1234345','url.com6','C24534534','2024-09-26'),
('2344232','url.com7','C22424324','2023-10-09'),
('3444342',NULL,'C24344434','2017-11-25'),
('4355554','url.com9','C23445544','2023-02-15'),
('5455543','url.com10','C23466566','2019-06-22'),
('1233243','url.com11','C23310757','2024-09-26'),
('4554355','url.com12','C23471089','2023-10-09'),
('5466634','url.com13','C23306742','2017-11-25'),
('5435452','url.com14','C23304330','2023-02-15'),
('3455232', 'url.com15','C23105671','2019-06-22'),
('1236789', 'url.com16', 'C24534534', NULL),
('2345678', 'url.com17', 'C22424324', '2023-10-10'),
('3456789', 'url.com18', 'C24344434', '2017-11-26'),
('4567890', 'url.com19', 'C23445544', '2023-02-16'),
('5678901', 'url.com20', 'C23466566', '2019-06-23'),
('6789012', 'url.com21', 'C23310757', '2024-09-27'),
('7890123', NULL, 'C23471089', '2023-10-11'),
('8901234', 'url.com23', 'C23306742', '2017-11-27'),
('9012345', 'url.com24', 'C23304330', '2023-02-17'),
('1234568', 'url.com25', 'C23105671', '2019-06-24'),
('4567892', 'url.com26', 'C23758749', '2016-11-25'),
('9078964', 'url.com27', 'C23904758', '2023-03-07'),
('1237975', 'url.com28', 'C26327398', '2015-07-22');




--entering data into LIKES table
insert into LIKES (User_ID, Photo_ID, date_of_like)
values 
('C23310757', '1234567', '2024-10-10'),
('C23471089', '1246894', NULL),
('C23306742', '2354674', '2017-11-25'),  
('C23304330', '3578694', '2023-11-13'),  
('C23105671', '6489663', '2019-07-01'),
('C24534534', '1234345', '2020-11-21'),
('C22424324', '2344232', '2021-04-24'),
('C24344434', '3444342', '2023-10-08'),
('C23445544', '4355554', '2018-02-13'),
('C23466566', '1234567', '2021-08-16'),
('C25675677', '1233243', '2023-09-18'),
('C27457677', '4554355', '2017-11-04'),
('C26546546', '5466634', '2019-06-28'),
('C24356555', '5435452', '2018-05-09'),
('C24327457', '3455232', '2020-05-04'),
('C23310757', '6789012', '2024-10-11'),  
('C23471089', '2345678', '2023-09-09'),
('C23306742', '8901234', NULL),          
('C23304330', '4567890', '2023-11-14'),
('C23105671', '5678901', '2019-07-02'),
('C24534534', '7890123', '2020-11-22'),  
('C22424324', '9012345', '2021-04-25'),  
('C24344434', '1234568', '2023-10-09'),  
('C23445544', '1236789', '2018-02-14'),  
('C23466566', '1233243', '2021-08-17');



--entering data into FOLLOW table
insert into FOLLOW (follower_ID, followee_ID,  follow_date_time)
values 
('C23310757', 'C23306742', '2024-09-25 11:30:56'), 
('C23471089', 'C23306742', '2023-09-08 12:45:12'),  
('C23306742', 'C23304330', '2017-10-25 14:34:59'),  
('C23304330', 'C23105671', '2023-01-14 18:23:13'),  
('C23105671', 'C24534534', '2019-06-25 10:43:04'),  -- C23105671 follows C24534534
('C24534534', 'C22424324', '2024-09-27 12:30:57'),  -- C24534534 follows C22424324
('C22424324', 'C24344434', '2024-09-30 12:30:57'),  -- C22424324 follows C24344434
('C24344434', 'C23445544', '2017-10-27 13:34:59'),  -- C24344434 follows C23445544
('C23445544', 'C23466566', '2023-01-16 08:23:23'),  -- C23445544 follows C23466566
('C23466566', 'C25675677', '2019-06-28 09:43:44'),  -- C23466566 follows C25675677
('C25675677', 'C27457677', '2024-09-29 18:30:56'),  -- C25675677 follows C27457677
('C27457677', 'C26546546', '2023-09-13 23:45:02'),  -- C27457677 follows C26546546
('C26546546', 'C24356555', '2017-10-29 03:34:58'),  -- C26546546 follows C24356555
('C24356555', 'C24327457', '2023-01-19 19:23:03'),  -- C24356555 follows C24327457
('C24327457', 'C23310757', '2019-06-01 00:43:00'),  -- C24327457 follows C23310757
('C23310757', 'C23310757', '2024-09-30 08:32:45'),  -- C23310757 follows C23310757
('C23310757', 'C23471089', '2023-09-15 09:25:12'),  -- C23310757 follows C23471089
('C23105671', 'C23445544', '2017-10-30 05:15:22'),  -- C23105671 follows C23445544
('C23445544', 'C27457677', '2024-09-30 12:00:00'),  -- C23445544 follows C27457677
('C23424234', 'C23471089', '2019-06-03 11:12:34'),  -- C23424234 follows C23471089
('C23471089', 'C22422343', '2024-10-01 13:20:41'),  -- C23471089 follows C22422343
('C22422343', 'C23243424', '2023-09-17 07:55:16'),  -- C22422343 follows C23243424
('C23243424', 'C23306742', '2017-11-01 06:40:50'),  -- C23243424 follows C23306742
('C23306742', 'C22422343', '2023-01-23 10:13:27'),  -- C23306742 follows C22422343
('C22422343', 'C23310757', '2019-06-06 15:43:58');



--displaying the data in the tables
select * from USERS;
select * from PHOTOS;
select * from LIKES;
select * from FOLLOW;

--LAB 4
select Username from USERS join LIKES using (User_ID) where Photo_ID = '5435452';
select Username from USERS join FOLLOW on User_ID = follower_ID where followee_ID = 'C23304330';
select Username from USERS join LIKES using (User_ID) where date_of_like < '2023-11-13' ;

--LAB 5
-- Getting usernames of users with at least one follower
SELECT USERS.username FROM USERS JOIN FOLLOW ON USERS.User_ID = FOLLOW.followee_ID;

-- Getting image_url of photos liked by User_ID = F12345
SELECT PHOTOS.image_URL FROM PHOTOS JOIN LIKES ON PHOTOS.Photo_ID = LIKES.Photo_ID
JOIN USERS on LIKES.User_ID = USERS.User_ID WHERE USERS.User_ID = 'C24534534';

-- Getting username of users who have not posted any photos
SELECT USERS.Username  FROM USERS  LEFT JOIN PHOTOS ON USERS.User_ID = PHOTOS.User_ID  WHERE PHOTOS.Photo_ID IS NULL;


-- Getting usernames of users who have liked their own photos
SELECT USERS.Username FROM USERS JOIN LIKES ON USERS.User_ID = LIKES.User_ID
join PHOTOS on LIKES.Photo_ID = PHOTOS.Photo_ID WHERE USERS.User_ID = PHOTOS.User_ID;

-- Getting usernames of users who have posted photos but have not received any likes
SELECT USERS.Username FROM USERS JOIN PHOTOS ON USERS.User_ID = PHOTOS.User_ID
left join LIKES on PHOTOS.Photo_ID = LIKES.Photo_ID WHERE LIKES.Photo_ID is null;

-- Getting usernames of users who have posted photos and received likes
SELECT USERS.Username FROM USERS JOIN PHOTOS ON USERS.User_ID = PHOTOS.User_ID join LIKES on PHOTOS.Photo_ID = LIKES.Photo_ID;

-- Getting usernames of users who have usernames with more than 10 characters
SELECT USERS.Username FROM USERS where length(USERS.Username) > 10;

-- Getting usernames of users who have usernames ending with the letter 'n'.
SELECT USERS.Username FROM USERS where USERS.Username = '%n';

-- Using the replace function to replace values in the username attribute
SELECT replace(USERS.Username, '_', '.') FROM USERS;

--LAB 9
-- Getting the username and the amount of photos they've published in descending order 
SELECT USERS.Username, COUNT(PHOTOS.Photo_ID) AS Photo_ID
FROM USERS 
LEFT JOIN PHOTOS  ON USERS.User_ID = PHOTOS.User_ID
GROUP BY USERS.Username
order by Photo_ID desc;

--Getting total number of likes for each photo
SELECT PHOTOS.Photo_ID, COUNT(LIKES.Photo_ID) AS Amount
FROM PHOTOS 
LEFT JOIN LIKES  ON PHOTOS.Photo_ID = LIKES.Photo_ID
GROUP BY PHOTOS.Photo_ID
order by Amount desc;

--Identifying the user who has the earliest photo
SELECT USERS.Username,
MIN(to_char(PHOTOS.published_date, 'DD/MM/YYYY')) as "User 'Date of release"
FROM USERS
JOIN PHOTOS ON USERS.User_ID = PHOTOS.User_ID
group by USERS.Username
order by MIN(PHOTOS.published_date) asc 
limit 1;

--Lab 11
--Drop and create an index for one attribute in a table of your choice. 
--Then, using EXPLAIN ANALYZE, compare the efficiency of a simple SELECT statement with and without the index.
DROP INDEX IF EXISTS username_index; -- to see if the index already exists
explain analyze select * from USERS where Username = 'Emmy.com';
CREATE INDEX username_index ON USERS(Username);
explain analyze select * from USERS where Username = 'Emmy.com';
select Username from USERS where Username = 'Emmy.com';


--Drop and create an index to the attribute that stores values of when photos were
--published. Using EXPLAIN ANALYZE, identify if the index improved the sorting of date
--of publication records in descending order.
drop index if exists photo_creation_index;
create index photo_creation_index on PHOTOS(published_date);
explain analyze select * from PHOTOS order by published_date desc;
select published_date from PHOTOS  order by published_date desc;

--Using a set operation, retrieve a list of unique users who either follow or
--are followed by a specific username of your choice. Hint: you might need to use a
--subquery to retrieve the specific username.
SELECT follower_ID as Username from FOLLOW where followee_ID = (select User_ID from USERS where Username = 'Emmy.com')
union 
SELECT followee_ID as Username from FOLLOW where follower_ID = (select User_ID from USERS where Username = 'Emmy.com');

--Using a set operation, retrieve the IDs of the users that appear in both the likes and follows tables
select User_ID from LIKES intersect select followee_ID from FOLLOW;


--Lab 12 TRIGGER
--creating the function 
CREATE OR REPLACE FUNCTION auto_follow()
RETURNS TRIGGER AS $$
BEGIN
INSERT INTO FOLLOW (follower_ID, followee_ID, follow_date_time)
VALUES (NEW.user_ID, (SELECT User_ID FROM PHOTOS WHERE Photo_ID = NEW.photo_ID), NOW());
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--creating the trigger
CREATE TRIGGER follow_trigger
AFTER INSERT ON LIKES
FOR EACH ROW
EXECUTE FUNCTION auto_follow();

--showing the follow table before we insert any data into the table likes
select * from FOLLOW ;

--inserting the values into the table likes
insert into LIKES (User_ID, Photo_ID, date_of_like)
values
('C23445544', '8901234', '2024-12-03'),
('C26546546', '8901234', '2024-12-03'), 
('C23424234', '1236789', '2024-12-03');

--showing the follow table after we insert any data into the table likes
select * from FOLLOW;

