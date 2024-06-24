 
 -- Create the tables
 CREATE TABLE INSTRUCTOR (
    INS_ID NUMBER PRIMARY KEY,
    INS_FNAME VARCHAR2(50),
    INS_SNAME VARCHAR2(50),
    INS_CONTACT VARCHAR2(20),
    INS_LEVEL NUMBER
);

CREATE TABLE CUSTOMER (
    CUST_ID VARCHAR2(10) PRIMARY KEY,
    CUST_FNAME VARCHAR2(50),
    CUST_SNAME VARCHAR2(50),
    CUST_ADDRESS VARCHAR2(100),
    CUST_CONTACT VARCHAR2(20)
);

CREATE TABLE DIVE (
    DIVE_ID NUMBER PRIMARY KEY,
    DIVE_NAME VARCHAR2(100),
    DIVE_DURATION VARCHAR2(20),
    DIVE_LOCATION VARCHAR2(100),
    DIVE_EXP_LEVEL NUMBER,
    DIVE_COST NUMBER
);

CREATE TABLE DIVE_EVENT (
    DIVE_EVENT_ID VARCHAR2(10) PRIMARY KEY,
    DIVE_DATE DATE,
    DIVE_PARTICIPANTS NUMBER,
    INS_ID NUMBER,
    CUST_ID VARCHAR2(10),
    DIVE_ID NUMBER,
    FOREIGN KEY (INS_ID) REFERENCES INSTRUCTOR(INS_ID),
    FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID),
    FOREIGN KEY (DIVE_ID) REFERENCES DIVE(DIVE_ID)
);

-- Insert into the tables
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES (101, 'James', 'Willis', '0843569851', 7);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES (102, 'Sam', 'Wait', '0763698521', 2);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES (103, 'Sally', 'Gumede', '0786598521', 8);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES (104, 'Bob', 'DuPreez', '0796369857', 3);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES (105, 'Simon', 'Jones', '0826598741', 9);


INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C115', 'Heinrich', 'Willis', '3 Main Road', '0821253659');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C116', 'David', 'Watson', '13 Cape Road', '0769658547');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C117', 'Waldo', 'Smith', '3 Mountain Road', '0863256574');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C118', 'Alex', 'Hanson', '8 Circle Road', '0762356587');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C119', 'Kuhle', 'Bitterhout', '15 Main Road', '0821235258');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C120', 'Thando', 'Zolani', '88 Summer Road', '0847541254');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C121', 'Philip', 'Jackson', '3 Long Road', '0745556658');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C122', 'Sarah', 'Jones', '7 Sea Road', '0814745745');
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C123', 'Catherine', 'Howard', '31 Lake Side Road', '0822232521');

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (550, 'Shark Dive', '3 hours', 'Shark Point', 8, 500);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (551, 'Coral Dive', '1 hour', 'Break Point', 7, 300);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (552, 'Wave Crescent', '2 hours', 'Ship wreck ally', 3, 800);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (553, 'Underwater Exploration', '1 hour', 'Coral ally', 2, 250);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (554, 'Underwater Adventure', '3 hours', 'Sandy Beach', 3, 750);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (555, 'Deep Blue Ocean', '30 minutes', 'Lazy Waves', 2, 120);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (556, 'Rough Seas', '1 hour', 'Pipe', 9, 700);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (557, 'White Water', '2 hours', 'Drifts', 5, 200);
INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (558, 'Current Adventure', '2 hours', 'Rock Lands', 3, 150);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_101', TO_DATE('15/JUL/17', 'DD/MON/YY'), 5, 103, 'C115', 558);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_102', TO_DATE('16/JUL/17', 'DD/MON/YY'), 7, 102, 'C117', 555);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_103', TO_DATE('18/JUL/17', 'DD/MON/YY'), 8, 104, 'C118', 552);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_104', TO_DATE('19/JUL/17', 'DD/MON/YY'), 3, 101, 'C119', 551);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_105', TO_DATE('21/JUL/17', 'DD/MON/YY'), 5, 104, 'C121', 558);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_106', TO_DATE('22/JUL/17', 'DD/MON/YY'), 8, 105, 'C120', 556);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_107', TO_DATE('25/JUL/17', 'DD/MON/YY'), 10, 105, 'C115', 554);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_108', TO_DATE('27/JUL/17', 'DD/MON/YY'), 5, 101, 'C122', 552);
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES ('de_109', TO_DATE('28/JUL/17', 'DD/MON/YY'), 3, 102, 'C123', 553);

-- Question 2
 -- Create the administrator role
CREATE ROLE C##admin_role;

-- Grant privileges to the administrator role
GRANT CREATE SESSION TO C##admin_role; -- Allow logging in to the database
GRANT CREATE TABLE TO C##admin_role; -- Allow creating tables
GRANT ALTER ANY TABLE TO C##admin_role; -- Allow altering any table
GRANT DROP ANY TABLE TO C##admin_role; -- Allow dropping any table
GRANT CREATE VIEW TO C##admin_role; -- Allow creating views
GRANT CREATE PROCEDURE TO C##admin_role; -- Allow creating procedures
GRANT CREATE USER TO C##admin_role; -- Allow creating users
GRANT DROP USER TO C##admin_role; -- Allow dropping users
 
-- Create the general user role
CREATE ROLE C##general_user_role;

-- Grant privileges to the general user role
GRANT CREATE SESSION TO C##general_user_role; -- Allow logging in to the database
GRANT SELECT ON INSTRUCTOR TO C##general_user_role; -- Allow selecting from the INSTRUCTOR table
GRANT SELECT ON CUSTOMER TO C##general_user_role; -- Allow selecting from the CUSTOMER table
GRANT SELECT ON DIVE TO C##general_user_role; -- Allow selecting from the DIVE table
GRANT SELECT ON DIVE_EVENT TO C##general_user_role; -- Allow selecting from the DIVE_EVENT table
 
-- Create an administrator user and assign the admin role
CREATE USER C##admin_user IDENTIFIED BY admin_password;
GRANT C##admin_role TO C##admin_user;

-- Create a general user and assign the general user role
CREATE USER C##general_user IDENTIFIED BY user_password;
GRANT C##general_user_role TO C##general_user;

--Question 3 

SELECT 
    i.INS_FNAME || ', ' || i.INS_SNAME AS INSTRUCTOR,
    c.CUST_FNAME || ', ' || c.CUST_SNAME AS CUSTOMER,
    d.DIVE_LOCATION,
    e.DIVE_PARTICIPANTS
FROM 
    DIVE_EVENT e
    JOIN INSTRUCTOR i ON e.INS_ID = i.INS_ID
    JOIN CUSTOMER c ON e.CUST_ID = c.CUST_ID
    JOIN DIVE d ON e.DIVE_ID = d.DIVE_ID
WHERE 
    e.DIVE_PARTICIPANTS BETWEEN 8 AND 10;

-- Question 4
SET SERVEROUTPUT ON;

DECLARE
    CURSOR dive_cursor IS
        SELECT 
            d.DIVE_NAME,
            e.DIVE_DATE,
            e.DIVE_PARTICIPANTS
        FROM 
            DIVE_EVENT e
            JOIN DIVE d ON e.DIVE_ID = d.DIVE_ID
        WHERE 
            e.DIVE_PARTICIPANTS >= 10;

    dive_record dive_cursor%ROWTYPE;
BEGIN
    OPEN dive_cursor;
    LOOP
        FETCH dive_cursor INTO dive_record;
        EXIT WHEN dive_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('DIVE NAME: ' || dive_record.DIVE_NAME);
        DBMS_OUTPUT.PUT_LINE('DIVE DATE: ' || TO_CHAR(dive_record.DIVE_DATE, 'DD/MON/YY'));
        DBMS_OUTPUT.PUT_LINE('PARTICIPANTS: ' || dive_record.DIVE_PARTICIPANTS);
        DBMS_OUTPUT.PUT_LINE('___________________________________________________________');
    END LOOP;
    CLOSE dive_cursor;
END;
/

-- Question 5

DECLARE
    CURSOR dive_cursor IS
        SELECT 
            c.CUST_FNAME || ', ' || c.CUST_SNAME AS CUSTOMER,
            d.DIVE_NAME,
            e.DIVE_PARTICIPANTS,
            d.DIVE_COST
        FROM 
            DIVE_EVENT e
            JOIN CUSTOMER c ON e.CUST_ID = c.CUST_ID
            JOIN DIVE d ON e.DIVE_ID = d.DIVE_ID
        WHERE 
            d.DIVE_COST > 500;

    dive_record dive_cursor%ROWTYPE;
    instructors_required NUMBER;

BEGIN
    OPEN dive_cursor;
    LOOP
        FETCH dive_cursor INTO dive_record;
        EXIT WHEN dive_cursor%NOTFOUND;
        
        -- Determine the number of instructors required
        IF dive_record.DIVE_PARTICIPANTS <= 4 THEN
            instructors_required := 1;
        ELSIF dive_record.DIVE_PARTICIPANTS BETWEEN 5 AND 7 THEN
            instructors_required := 2;
        ELSE
            instructors_required := 3;
        END IF;

        -- Display the report
        DBMS_OUTPUT.PUT_LINE('CUSTOMER : ' || dive_record.CUSTOMER);
        DBMS_OUTPUT.PUT_LINE('DIVE NAME: ' || dive_record.DIVE_NAME);
        DBMS_OUTPUT.PUT_LINE('PARTICIPANTS: ' || dive_record.DIVE_PARTICIPANTS);
        DBMS_OUTPUT.PUT_LINE('STATUS: ' || instructors_required || ' instructors required.');
        DBMS_OUTPUT.PUT_LINE('___________________________________________________');
    END LOOP;
    CLOSE dive_cursor;
END;
/

-- Question 6
CREATE VIEW Vw_Dive_Event AS
SELECT 
    de.INS_ID,
    de.CUST_ID,
    c.CUST_ADDRESS,
    d.DIVE_DURATION,
    de.DIVE_DATE
FROM 
    DIVE_EVENT de
JOIN 
    CUSTOMER c ON de.CUST_ID = c.CUST_ID
JOIN 
    DIVE d ON de.DIVE_ID = d.DIVE_ID
WHERE 
    de.DIVE_DATE < TO_DATE('19/JUL/17', 'DD/MON/YY');


-- Question 7 --------------------------------------------------
CREATE OR REPLACE TRIGGER New_Dive_Event
BEFORE INSERT ON DIVE_EVENT
FOR EACH ROW
BEGIN
    IF :NEW.DIVE_PARTICIPANTS <= 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Number of participants must be greater than 0.');
    ELSIF :NEW.DIVE_PARTICIPANTS > 20 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Number of participants cannot exceed 20.');
    END IF;
END;
/

-- Adding 5 participants
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID)
VALUES ('de_101', TO_DATE('15/JUL/17', 'DD/MON/YY'), 5, 103, 'C115', 558);


-- Question 8
CREATE OR REPLACE PROCEDURE sp_Customer_Details(
    p_cust_id IN CUSTOMER.CUST_ID%TYPE,
    p_dive_date IN DATE
)
AS
    v_customer_name CUSTOMER.CUST_FNAME%TYPE;
    v_dive_name DIVE.DIVE_NAME%TYPE;
BEGIN
    -- Retrieve customer name for the provided customer ID
    SELECT CUST_FNAME INTO v_customer_name
    FROM CUSTOMER
    WHERE CUST_ID = p_cust_id;

    -- Retrieve dive name booked for the provided customer ID and dive date
    SELECT d.DIVE_NAME INTO v_dive_name
    FROM DIVE_EVENT de
    JOIN DIVE d ON de.DIVE_ID = d.DIVE_ID
    WHERE de.CUST_ID = p_cust_id
    AND de.DIVE_DATE = p_dive_date;

    -- Display the customer details
    DBMS_OUTPUT.PUT_LINE('CUSTOMER DETAILS: ' || v_customer_name || ' booked for ' || v_dive_name || ' on ' || TO_CHAR(p_dive_date, 'DD/MON/YY'));
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No customer found for the provided customer ID.');
END;
/
-- Execute the procedure  
BEGIN
    sp_Customer_Details('C115', TO_DATE('15/JUL/17', 'DD/MON/YY'));
END;
/

--Question 9

--This function calculates the adjusted dive duration based on the dive duration and the experience level required for the dive.
CREATE OR REPLACE FUNCTION fn_Dive_Adjustments(
    p_dive_duration IN NUMBER,
    p_exp_level IN NUMBER
)
RETURN NUMBER
AS
    v_adjusted_duration NUMBER;
BEGIN
  
    IF p_exp_level = 1 THEN
        v_adjusted_duration := p_dive_duration * 1.1; -- 10% increase for beginner dives
    ELSIF p_exp_level = 2 THEN
        v_adjusted_duration := p_dive_duration * 1.05; -- 5% increase for intermediate dives
    ELSIF p_exp_level = 3 THEN
        v_adjusted_duration := p_dive_duration; -- No adjustment for advanced dives
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Invalid experience level.'); -- Raise error for invalid experience level
    END IF;

    RETURN v_adjusted_duration;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL;
END;
/

 
SELECT fn_Dive_Adjustments(2, 1) AS adjusted_duration FROM DUAL;






