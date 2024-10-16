#The number of members taking a specific class, finding which class is most popular
SELECT className, COUNT(DISTINCT(memberID)) AS "Number of members taking class"
FROM Classes
JOIN Sessions ON Classes.classID = Sessions.classID
JOIN Members_Taking_Sessions ON Sessions.sessionID = Members_Taking_Sessions.sessionID
GROUP BY className
ORDER BY COUNT(DISTINCT(memberID)) DESC;

CALL TP_Q1();

#Finds which members are not taking any classes
SELECT memberFName, memberLName
FROM Members
WHERE NOT EXISTS (SELECT memberID FROM Members_Taking_Sessions WHERE Members.memberID = Members_Taking_Sessions.memberID)
ORDER BY memberLName;

CALL TP_Q3();

#The number of classes that are above the average class duration
SELECT COUNT(duration) AS "Number of sessions over average", className, AVG(duration) AS "Average session duration", 
(SELECT AVG(duration) FROM Sessions) AS "Average duration of all sessions"
FROM Sessions
JOIN Classes ON Sessions.classID = Classes.classID
WHERE duration > (SELECT AVG(duration) FROM Sessions)
GROUP BY className;

CALL TP_Q2();

#Finds the least popular membership to determine next steps (sunsetting the membership or adjusting it)
SELECT membershipType, COUNT(memberID) AS "Number of members"
FROM Memberships
JOIN Members ON Memberships.membershipID = Members.membershipID
GROUP BY membershipType
ORDER BY COUNT(memberID); 

CALL TP_Q4();