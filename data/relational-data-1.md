# Introduction to Data and Relational Data Modeling

This article will help you understand relational data modeling. From the mathematical underpinnings, to an entity relationship (ER) diagram, the goal here is to provide you with a survey of important knolwedge that will illuminate the work you do every day with data.

In addition, being familiar with the terminology and background of relational data modeling can make you a stronger job candidate, as hiring managers appreciate someone who has taken the time to understand the "Why?" behind our every day technology.

## What is data?

Data is readable information. It can come in the form of numbers, characters, images or other things recorded to a durable medium. Data by itself is likely to be meaningless. Take the **data element** "M". By itself, we can say a few things about "M". It's a string. It's one character. In our table of data, we might say that "M" stands in a place that cannot be left ```NULL```. Still, we haven't learned anything.

For data to be useful, we need to interpret it. Suppose "M" is the value a user inputted in a form, meaning male gender. Now, we can make decisions or create business logic that deals with it. It has become information. The purpose for which we are writing software can be fulfilled, when data can be interpreted. We might want to match male users to clothing fit for males. We might want to use fitness metrics to determine ideal heart rate for male users.

As professionals dealing with data, our data needs to be as simple and reusable as possible. That's how we isolate meaning and build relationships that support the creation of new information. If we can easily compare gender with average time spent on the site, for example, maybe we can learn new information about our target audience. It's important for us to organize data to provide us with the best means for dealing with the information we need.

We will learn more about data in this article, spelling out the thinking that underlies well organized data in greater detail. That way, we can unlock the potential benefits that well-modeled data has to offer software developers.

## What is a data model?

A **data model** is a visual representation of our data. It achieves at least three things.

First, it shows us the different **entities** that our data describe. An entity is an abstraction of a person, place, thing or concept. The entities involved in a data model depend on the purpose of our software and database. For example, if we are developing software that handles data for a school, the entities for which we have data might be students, teachers, classes, subjects, etc.  

Second, a data model shows us the way those entities are connected. To continue with the school example, teachers *have* many students. Subjects *have* many classes. Each entity needs to be connected in a certain way to the other entities.  

Third, a data model shows us how things work. Imagine the full set of entities and connections for a school. Once you can envision that, you'll really see how things work in that school. Once a software developer has that information, they'll be better able to serve that customer by creating applications with great business value.

Every data model should be able to provide the information above, but there are also different levels of data modeling. The ones we will explore here are related in that one is the basis for the next, and each one has a different amount of detail.  

Starting with a **conceptual** data model: this abstracts away detail to focus at the highest level of analysis. The example below demonstrates a conceptual model. For now, don't let the specific graphics distract you. Get a general sense of the relationship being illustrated.

[image]

This conceptual model allows us to see the basic entities that suggest the business rules for a customer. However, what if we need more detail? A conceptual data model is used to inform a **logical** model. A logical data model includes details that a conceptual model leaves out. All of a logical entity's attributes need to be fully spelled out. That means we need to completely understand the business details. Make note that with conceptual and logical models, we are learning more about the business to understand the needs of the data model. Logical models come closer to implementation, but they are still used in this learning phase.

[image]

Notice: For the purposes of our guiding example, we do not have all possible details available in the world, we just include details that are needed for our business. Isn't that interesting? A software developer has to know significant details about a business, including everything about how its data is used.

These preliminary data models lead to the **physical** data model. This is the model that will determine the actual design of a database. With this data model, we have to consider database performance, scale, our software, legacy data, and more.

The three types of modeling above, if done in succession, are meant to provide the basis of real implementation. However, we haven't considered the current state of affairs. Sometimes, we already have a business, software and data to study. That can form the basis of an **as-is** data model. Sometimes, we are charged to invent or re-invent a data model: which is called a **to-be** data model.

Having a grasp of these different data modeling states can enrich how you deal with and communicate about data models. Are you trying to come up with an as-is data model, at the conceptual level, for practice? Or, do you need a logical, to-be model ready to go by Monday morning for the development team to start implementing? Our guiding example is a to-be data model.

## Why relational data?

Relational data isn't the only game in town. An easy way to understand the power and benefits of relational data is to briefly look at other paradigms. That way, you don't have to take one on faith. Here, we'll briefly review hierarchical databases and network databases to more easily explore the benefits of relational databases.

A **hierarchical database** is very similar to the directory structure on your computer. A group of records has a single parent, and that parent may be in a group that has one parent. This works in some contexts. For example, a university might be composed of a collection of departments, and a department can be composed of a collection of teachers and courses. Hierarchy is intuitive, but it is not flexible. We are able to link only one parent to any children record types. So, if teachers belong to departments and to courses, we have to duplicate teachers in those two different places. And that means any change to the staff must be updated in two places. That's not flexible and it requires duplicity to work in the real world.

[image]

A **network database** solves the basic defect of hierarchical databases. It allows for more than one parent, for any child. It does this by creating individual pairings of parent-child that can exist between any two entities. For example, we can link a teacher to a course and link a teacher to a department. However, things are usually get fairly complex, when we try to connect two entities that are not directly paired. For example, if there is no pairing between student and department, in the context of a university, then we have to query the existing pairings (assuming we know which group of pairs best links us to our targeted relationship). That does a poor job of reflecting the real *relationships* that exist in the world.

**That last part is important.** We want our data model and our database to reflect the real world. The same principle applies to our code, in the context of object oriented programming. Putting all of these dry, analytical judgments about databases aside: what really counts (and always a great basis for judgment) is how well our code or data reflect the familiar world around us.

We are finally ready to talk about **relational databases**. We are going to provide greater detail on this type of database than the previous types.


data is organized into structures called tables
the relations between data elements are organized into structures called constraints
a table is a collection of records
rach record in a table contains the same data elements (or fields)
relational databases don't support multiple occurences within a single field

the value in a data element is single and atomic (no data replicates within a field, and data contained in a field doesn't require any interpretation)
each row is uniue
column values are of the same kind
the ordinal sequence of columns in a table isn't significant
the ordinal sequence of rows in a tabe isn't significant,
each column has a uniquue name within the table that owns it

by connecting records through matching data contained in database fields allows for child records to have multiple parents.

relational design emphasizes storing information in only one place
the beauty is that you can avoid the strange pairing that was involved in network databases. instead, you match a column from a parent table (the primary key) with a column from a child table that references the parent table's records (the foreign key on this table) 
