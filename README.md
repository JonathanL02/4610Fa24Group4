# Team 4 Mist 4610 Group Project 1

**Team Name:**

Group 4

**Team Members:**

Lindsay Fleishman @LindsayFleishman

Jonathan Li @JonathanL02

Arti Girish @artig123

Anish Kapoor @a-kapoor731

Omar Meshaal @OmarMeshaal2004

**Problem Description:**

The purpose of the project is to model and create a relational database describing any scenario of choosing. For our group, we created a relational database showing the general workings of a gym. We displayed the relationships between the entities that we believe are the backbone and foundation every gym needs, and we populated the entities with sampling data to show how each relationship accurately represents the business. In addition, we used the data to perform queries to gather more information on the inner workings of a gym, and how these queries can help us lead to business decisions to further improve the gym.

**Data Model:**

Explanation of data model:

Based off of our personal experience with gyms, and what we personally believe is necessary for a gym to operate, our model is based on the structure of a hypothetical gym. 

The Employee entity represents the different workers inside the gym based on their ID. Within this entity, there is also a One-to-One recursive relationship as gyms have supervisors that supervise other employees within their department. This can help those that are supervised to learn how to teach classes and more from more experienced workers there. The employees have a direct relationship with the department that they work in, thus a many to one relationship as many employees can be in one department. Our Department entity represents the different areas within the gym (Front Desk, Sanitation, Swimming, Rec Sports, etc.). We believe the Department entity truly represents all of the aspects within the gym.

Our Employee entity has a one to many relationship with session entity, as one employee can teach many sessions at the gym. For example, a session can happen many times a week in the gym schedule, and an employee can be assigned to teach all of those sessions. Each session can be taught by one employee. The Session entity includes the time, duration, and attendance of classes, which is valuable to understanding the success of a certain workout class and track the popularity of sessions. 

There are many branches that come from the session entity that include Classes, Rooms, and Members. One workout class can have multiple sessions, as the popularity of a class can result in it being on the workout schedule more often. This is displayed in a one to many relationship between the entities. Additionally, many members can take as many sessions as they desire at the gym. Because of this, the relationship between the Member entity and Session entity is a many to many relationship, resulting in an associative entity "Members_Taking_Sessions". The Members_Taking_Sessions table allows the user to see which members are in what sessions, if the members complete a session, how they would rate it, and which employees are teaching these sessions. Many members can be under one type of membership, represented by a one to many relationship. A membership can have many members, but each member can only have one membership to the gym. The Membership table shows the cost, type, and description of the membership as well as how often the members can go with that membership package. This helps to understand the range in memberships that is provided at the gym.

For Sessions entity, many Sessions can be in one room. However, you can have a workout session without a room, for example, outdoor classes like running or yoga. This is represented by an indirect many to one relationship between the Sessions entity and the Rooms entity. Each room has one amenity, and an amentiy can only exist in one room, meaning there is a one to one identifying relationship between the two. The Amenities table (Spa, Food, Massage, Pool, etc.) shows the benefits of the gym membership that clients can receive.

Lastly, a gym is not complete without its equipment, which can be a valuable tool in a workout. The Equipment table includes the equipment name, as well as its ID, to track what the gym owns in inventory. This has a direct many to one relationship to the Rooms table, as one room can have many pieces of equipment for the workout offered in that room.

Overall, the data model truly organizes the functionality of a gym, and pieces together how the business of the gym can build revenue. 

![Associative](https://github.com/user-attachments/assets/191c080c-0f06-400d-8484-0f196d542aae)


**Data Dictionary:**

<img width="860" alt="Screenshot 2024-10-18 at 1 40 43 PM" src="https://github.com/user-attachments/assets/167a6e7a-be99-4884-8f39-ebcacc1d8d59">

<img width="854" alt="Screenshot 2024-10-18 at 1 41 23 PM" src="https://github.com/user-attachments/assets/781db77a-6a8c-43de-b266-62c7676565ec">

<img width="855" alt="Screenshot 2024-10-18 at 1 41 47 PM" src="https://github.com/user-attachments/assets/f037c66f-7ece-4615-9869-0b307206ad8a">
<img width="684" alt="Screenshot 2024-10-18 at 1 42 25 PM" src="https://github.com/user-attachments/assets/995f8e6c-aed0-4954-83d1-de1ceb71017f">
<img width="682" alt="Screenshot 2024-10-18 at 1 43 20 PM" src="https://github.com/user-attachments/assets/bb9f9b58-f590-48d6-adaa-d800a36f71f2">
<img width="682" alt="Screenshot 2024-10-18 at 1 43 11 PM" src="https://github.com/user-attachments/assets/6578b5aa-56a5-4d48-a59d-d7aa90b1cd0a">
<img width="680" alt="Screenshot 2024-10-18 at 1 43 02 PM" src="https://github.com/user-attachments/assets/3a148da6-282f-41d8-aa6f-afe49c566b4e">
<img width="687" alt="Screenshot 2024-10-18 at 1 42 50 PM" src="https://github.com/user-attachments/assets/612b79f6-ddc3-4733-b93e-7a63a0749206">
<img width="686" alt="Screenshot 2024-10-18 at 1 42 43 PM" src="https://github.com/user-attachments/assets/bfdc5e24-5990-43ab-9ce5-9ce15ad0d4a3">
<img width="689" alt="Screenshot 2024-10-18 at 1 42 33 PM" src="https://github.com/user-attachments/assets/d9523cfc-ddec-4077-a561-b1089d5875c4">


**Queries:**
1. Query 1 lists the number of members taking a specific class, grouping by the name of the class and ordering by descending.
<img width="686" alt="Screenshot 2024-10-18 at 9 31 32 AM" src="https://github.com/user-attachments/assets/8a17dcbb-fc03-4c80-a2ca-abe1b9f2d868">

Query 1 allows managers to see which sessions are the most popular, which can be seen by the count of members taking each class. This information is likely needed to help organize scheduling, to make sure the classes that have the highest turnout are more populated on the schedule than those that do not have anyone taking it. Managers are also able to identify trends through this query by understanding more about their members and clients' needs. 



2. Query 2 lists the number of sessions that are above the average class duration, which are grouped by the type of class.

<img width="811" alt="Screenshot 2024-10-18 at 9 31 41 AM" src="https://github.com/user-attachments/assets/7090bcbf-4d9b-47c5-a124-347a99b5369d">

A class that goes above the duration time can impact the scheduling of classes, as this can be due by an instructor teaching off the normal time or a class that's offered for a longer period of time for those who want to workout for longer. If the session duration is longer than average and the managers don't schedule around this, it may cause delays to classes that are right after the session before, giving employees a harder time to change over. In addition, the number of classes offered can allow managers to see who are taking these longer sessions, and if the time it is offered fits those certain members; maybe it is students after school or people who are taking a lunch time break. It helps for managers to achieve their goal of making sure each session gets capacity members taking it for most profit. 

3. Query 3 lists the members who are not taking any classes at the gym. The results were ordered by the members' last names.
<img width="800" alt="Screenshot 2024-10-18 at 9 31 51 AM" src="https://github.com/user-attachments/assets/a0e82063-a7da-41cb-b6bf-25d9dfb92c30">


Query 3 shows insight into the specific information on the clients that do not attend any sessions at the gym. This is an analysis tool to understanding if there are any patterns with those who do not take classes: do they prefer personal training? working out on their own? This offers new ideas and strategies to outreach to these customers to make sure the gym is still profitting from them, maybe offering personal training instead of sessions for a different charge. 

4. Query 4 lists the least popular membership, grouping by membership type and counting how many people have each type of membership.
![IMG_7274](https://github.com/user-attachments/assets/c55da472-6cfb-4549-ab42-33564c361fb6)


   By analyzing the least popular membership, the business can determine the next steps for what type of membership should be involved instead to achieve higher amount of clients attending the gym. Showing results for least popular membership can help managers see if they should get rid of the membership completely and stick with the other types or adjust it slightly to market it better to the target market.

5. Query 5 finds employees who supervise the most people and their rating for sessions is less than 5.
![IMG_1114](https://github.com/user-attachments/assets/243b2f57-f671-4a86-a681-3d73051c8a0d)

Query 5 shows us if supervising is helping employees properly learn to teach sessions, or if the members do not like these teachers due to it. Those that supervise and have a poor rating show us they should not be supervisors since the memebrs do not like their classes. This also shows us that if a supervisor is supervising too many people, is it hindering their ratings and is there any correlation between that. 

6. Query 6 lists the members who take sessions between January and March, as well as October through December, and lists the percentage of sessions in comparison to the total yearly sessions.
![IMG_1853](https://github.com/user-attachments/assets/7051a993-4c5a-4727-b6ba-7f80723ee403)
![IMG_7583](https://github.com/user-attachments/assets/7f33d1c5-3f78-4cc8-8c9d-2f5c10b9fef4)


This query allows managers to analyze and compare these two seasons to see how popular the gym is. October through December is holiday season when members usually take vacations, so this query can show us if there is a dip in the amount of memebrs that take sessions during this time. January through March is usually when gyms pick back up in attendance, so managers can see if this is true through the query. 

7. Query 7 lists the amount of members grouped by where they are from.
![IMG_2552](https://github.com/user-attachments/assets/a6624bac-72c8-4d1e-a30d-1ed61a90b986)

This query allows managers to get a better understanding of the demographics of their clients. If more come from a certain area, this can help with marketing strategies to help relate to the members and produce more revenue.

8. Query 8 lists the rooms that have treadmills and dumbbels in them and the amount in each room.
![IMG_0058](https://github.com/user-attachments/assets/75aaf824-4019-4562-8d4a-d0edaa382111)

This query can serve as an inventory check for the business to track how much and where all of the equipment is. This can help in regards to if a specific piece of equipment needs a repurchase, if there a rooms that don't already have the equipment in it and need it for a certain session, or if more members join a session in that room and a piece of equipment is needed. This organizes and analyzes inventory, a key component to running a gym. 

9. Query 9 lists the employees and members where the employee taught the same member in at least 2 of their sessions.
![IMG_2944](https://github.com/user-attachments/assets/f3607e8f-9293-445a-95a0-d97a9b50e69e)

This query allows the business to see who the members' favorite teachers are, and can help to make the business decision on whether the employee should teach more sessions and if that will help populate the schedule. For example, the same employee in this table was favored by multiple members, showing that the employee can be promoted to a higher teaching position if they believe it will bring in more revenue and better feedback. 


**Database information:**

Additional Information: The queries are stored in the Stored Procedures section of the database which can be called using CALL TP_QX();

Name of the database: ns_4610Fa24Group4



