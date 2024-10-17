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



**Queries:**


**Database information:**

Additional Information: The queries are stored in the Stored Procedures section of the database which can be called using CALL TP_QX();

Name of the database: ns_4610Fa24Group4



