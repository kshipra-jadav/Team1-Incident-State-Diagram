CREATE DATABASE IF NOT EXISTS Incident;
USE Incident;

DROP TABLE INC_DTL_LOG;

CREATE TABLE INC_DTL_LOG
(
   SR_NO INT AUTO_INCREMENT PRIMARY KEY,
   COMP_CD INT NOT NULL,
   TICKET_ID INT NOT NULL,
   SEQ_NO INT NOT NULL,
   EMP_CP INT NOT NULL,
   EMAIL_DT DATE NOT NULL,
   EMAIL_TIME TIME(0) NOT NULL,
   INCIDENT_EVENT_DTL VARCHAR(255) NOT NULL,
   ATTACHMENT VARCHAR(255) DEFAULT NULL,
   STATUS_INCIDENT VARCHAR(255) NOT NULL,
   ASSIGN_TO INT NOT NULL
   );
   
INSERT INTO INC_DTL_LOG
(
	SR_NO,
    COMP_CD,
    TICKET_ID,
    SEQ_NO,
    EMP_CP,
    EMAIL_DT,
    EMAIL_TIME,
    INCIDENT_EVENT_DTL,
    STATUS_INCIDENT,
    ASSIGN_TO
) VALUES
(
	1,
    103,
    1,
    1,
    680001,
    '2022-01-04',
    "18:58:25",
    "Test",
    "New",
    68002
),
(
	2,
    103,
    1,
    2,
    680002,
    '2022-01-05',
    "11:12:58",
    "Working on it",
    "In Progress",
    68002
),
(
	3,
    103,
    1,
    3,
    680002,
    '2022-01-05',
    "11:13:28",
    "Solution Provided",
    "Solution Provided",
    68001
),
(
	4,
    103,
    1,
    4,
    680001,
    '2022-01-05',
    "11:14:22",
    "Done UAT.Processing for LIVE",
    "UAT Completed",
    68001
),
(
	5,
    103,
    1,
    5,
    680002,
    '2022-01-05',
    "11:15:02",
    "Live now",
    "Live",
    68001
),
(
	6,
    103,
    1,
    6,
    680001,
    '2022-01-05',
    "11:15:37",
    "OK Closing Incident",
    "Close",
    68001
),
(
	7,
    103,
    2,
    1,
    680002,
    '2022-01-05',
    "11:18:36",
    "test",
    "New",
    68001
),
(
	8,
    103,
    2,
    2,
    680001,
    '2022-01-05',
    "11:25:37",
    "Working",
    "In progress",
    68001
),
(
	9,
    103,
    2,
    3,
    680001,
    '2022-01-05',
    "11:28:02",
    "Need more info",
    "Awaiting Customer",
    68002
),
(
	10,
    103,
    2,
    4,
    680002,
    '2022-01-05',
    "12:05:36",
    "Information recieved.. work in progress",
    "In Progress",
    68002
);
    
    
    
   
   
   
