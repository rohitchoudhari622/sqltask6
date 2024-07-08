--table 1 student health 

CREATE TABLE student_health (
    id SERIAL PRIMARY KEY,
    Age INT,
    Course VARCHAR(100),
    Gender VARCHAR(10),
    CGPA DECIMAL(3, 2),
    Stress_Level INT,
    Depression_Score INT,
    Anxiety_Score INT,
    Sleep_Quality VARCHAR(50),
    Physical_Activity VARCHAR(50),
    Diet_Quality VARCHAR(50),
    Social_Support VARCHAR(50),
    Relationship_Status VARCHAR(50),
    Counseling_Service_Use VARCHAR(50),
    Family_History VARCHAR(50),
    Chronic_Illness VARCHAR(50),
    Extracurricular_Involvement VARCHAR(50),
    Semester_Credit_Load INT,
    Residence_Type VARCHAR(50)
);

select * from student_health

---table 2 mental_health_emp

CREATE TABLE mental_health_emp (
    id SERIAL PRIMARY KEY,
    Gender VARCHAR(10),
    Country VARCHAR(100),
    Occupation VARCHAR(100),
    Family_History VARCHAR(50),
    Treatment VARCHAR(50),
    Growing_Stress VARCHAR(50),
    Changes_Habits VARCHAR(50),
    Mental_Health_History VARCHAR(50),
    Mood_Swings VARCHAR(50),
    Work_Interest VARCHAR(50),
    Social_Weakness VARCHAR(50),
    Mental_Health_Interview VARCHAR(50)
);


select * from mental_health_emp

---table 3 health_info

CREATE TABLE health_info (
    id SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    Gender VARCHAR(10),
    Blood_Type VARCHAR(10),
    Medical_Condition VARCHAR(255),
    Date_of_Admission DATE,
    Doctor VARCHAR(255),
    Hospital VARCHAR(255),
    Insurance_Provider VARCHAR(100),
    Billing_Amount DECIMAL(10, 2),
    Room_Number VARCHAR(20),
    Admission_Type VARCHAR(50),
    Discharge_Date DATE,
    Medication VARCHAR(255),
    Test_Results VARCHAR(255)
);


select * from health_info



-----join

select * from student_health as sh
inner join mental_health_emp as mh
on sh.id = mh.id


---group by
	
select sh.id,round( avg(sh.age),2)from student_health as sh
inner join mental_health_emp as mh
on sh.id = mh.id
group by sh.id 

---having 

select sh.id,round( avg(sh.age)), sh.age from student_health as sh
inner join mental_health_emp as mh
on sh.id = mh.id
group by sh.id, sh.age
having sh.age > 22



---union 

	CREATE TABLE student_health1 (
    id SERIAL PRIMARY KEY,
    Age INT,
    Course VARCHAR(100),
    Gender VARCHAR(10),
    CGPA DECIMAL(3, 2),
    Stress_Level INT,
    Depression_Score INT,
    Anxiety_Score INT,
    Sleep_Quality VARCHAR(50),
    Physical_Activity VARCHAR(50),
    Diet_Quality VARCHAR(50),
    Social_Support VARCHAR(50),
    Relationship_Status VARCHAR(50),
    Counseling_Service_Use VARCHAR(50),
    Family_History VARCHAR(50),
    Chronic_Illness VARCHAR(50),
    Extracurricular_Involvement VARCHAR(50),
    Semester_Credit_Load INT,
    Residence_Type VARCHAR(50)
);


select * from student_health
	union 
select * from student_health1
