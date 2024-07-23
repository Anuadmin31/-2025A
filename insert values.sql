USE university;
INSERT INTO department VALUES("biology","Watson",90000);
INSERT INTO department VALUES("comp.sci","taylor",100000);
INSERT INTO department VALUES("Elec.eng","taylor",85000);
INSERT INTO department VALUES("Finance","Painter",120000);
INSERT INTO department VALUES("History","painter",50000);
INSERT INTO department VALUES("music","packard",80000);
INSERT INTO department VALUES("physics","Watson",70000);

INSERT INTO instructor VALUES('10101',"srinivasan",65000,"comp.sci");
INSERT INTO instructor VALUES('12121',"Wu",90000,"Finance");
INSERT INTO instructor VALUES('15151',"Mozart",40000,"music");
INSERT INTO instructor VALUES('22222',"Einstein",95000,"Physics");
INSERT INTO instructor VALUES('32343',"El said",60000,"History");
INSERT INTO instructor VALUES('33456',"Gold",87000,"physics");
INSERT INTO instructor VALUES('45565',"Katz",75000,"comp.sci");
INSERT INTO instructor VALUES('58583',"Califieri",62000,"History");
INSERT INTO instructor VALUES('76543',"singh",800000,"Finance");
INSERT INTO instructor VALUES('76766',"crick",72000,"biology");
INSERT INTO instructor VALUES('83821',"Brandi",92000,"comp.sci");
INSERT INTO instructor VALUES('98345',"Kim",80000,"Elec.eng");

SELECT * FROM instructor;

INSERT INTO
	student(ID ,name, tot_cred, dept_name)
VALUES
	('43332',"Jhon",23,'biology'),
	('67911',"Roy",23,'comp.sci'),
	('58758',"Rashmi",21,'comp.sci'),
	('27618',"Rakshit",21,'comp.sci'),
	('46394',"Abdul",25,'Elec.eng'),
	('18462',"Ahmad",23,'Finance'),
	('57483',"Alter",23,'Finance'),
	('27146',"Jimmy",24,'Finance'),
	('68765',"Franklin",23,'History'),
	('92915',"Jennifer",24,'music'),
	('53110',"Ramesh",23,'music'),
	('59675',"Smith",25,'physics'),
	('53255',"Joyce",23,'physics'),
	('40399',"Rahul",23,'physics');
    
SELECT * FROM student;

INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("BIO-101","Intro to Biology","Biology",4);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("BIO-301","genetics","Biology",4);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("BIO-399","computational biology","Biology",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("CS-101","Intro to Computer science","comp.sci",4);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("CS-190","Game design","comp.sci",4);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("CS-315","robotics","comp.sci",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("CS-319","image processing","comp.sci",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("CS-347","database system concepts","comp.sci",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("EE-181","Intro to degital system","Elec.eng",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("FIN-201","investment banking","Finance",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("HIS-351","world history","History",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("MU-199","music video production","music",3);
INSERT INTO course(course_id,title,dept_name,credits)
	VALUES("PHY-101","physical principals","physics",4);
    
SELECT * FROM course;

INSERT INTO section(course_id,sec_id,semester,year) VALUES("BIO-101",1,"summer",2017);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("BIO-301",1,"summer",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-101",1,"fall",2017);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-101",1,"spring",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-190",1,"spring",2017);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-190",2,"spring",2017);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-315",1,"spring",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-319",1,"spring",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-319",2,"spring",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("CS-347",1,"fall",2017);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("EE-181",1,"spring",2017);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("FIN-201",1,"spring",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("HIS-351",1,"spring",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("MU-199",1,"spring",2018);
INSERT INTO section(course_id,sec_id,semester,year) VALUES("PHY-101",1,"fall",2017);

SELECT * FROM section;

INSERT INTO
		teaches(ID,sec_id,semester,year,course_id)
	VALUES
		(76766,1,"summer",2017,"BIO-101"),
		(76766,1,"summer",2018,"BIO-301"),
		(10101,1,"Fall",2017,"CS-101"),
		(45565,1,"spring",2018,"CS-101"),
		(83821,2,"spring",2017,"CS-190"),
		(10101,1,"spring",2017,"CS-190"),
		(45565,1,"spring",2018,"CS-315"),
		(83821,2,"spring",2018,"CS-319"),
		(10101,1,"spring",2018,"CS-101"),
		(45565,1,"Fall",2017,"CS-347"),
		(98345,1,"spring",2017,"EE-181"),
		(76543,1,"spring",2018,"FIN-201"),
		(32343,1,"spring",2018,"HIS-351"),
		(15151,1,"spring",2018,"MU-199"),
		(33456,1,"Fall",2017,"PHY-101");
        
SELECT * FROM teaches;

INSERT INTO 
		takes(ID,sec_id,semester,year,course_id,grade)
VALUES
('43332',1,'fall',2017,'CS-101','C'),
('43332',2,'spring',2017,'CS-190','A'),
('43332',1,'spring',2018,'CS-315','A'),
('43332',1,'fall',2017,'CS-347','A'),
('27146',1,'spring',2018,'HIS-351','B'),
('58758',1,'spring',2018,'FIN-201','C'),
('27618',1,'Fall',2017,'PHY-101','B'),
('18462',1,'fall',2017,'CS-101','F'),
('18462',1,'spring',2018,'CS-101','B'),
('18462',1,'spring',2018,'CS-319','B'),
('57483',1,'fall',2017,'CS-101','A'),
('57483',2,'spring',2017,'CS-190','B'),
('68765',1,'spring',2018,'MU-199','A'),
('92915',1,'fall',2017,'CS-101','A'),
('40399',2,'spring',2018,'CS-319','A'),
('92915',1,'Spring',2017,'EE-181','C'),
('53110',1,'Fall',2017,'CS-101','C'),
('53110',1,'Spring',2018,'CS-315','B'),
('59675',1,'summer',2017,'BIO-101','A'),
('40399',1,'summer',2018,'BIO-301',NULL);

SELECT * FROM takes;