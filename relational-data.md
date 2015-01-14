# Relational Data (Under cosntruction)

This article will help you understand relational data modeling. From the mathematical underpinnings, to drafting an entity relationship (ER) diagram, the goal here is to provide you with a survey of important knolwedge that will illuminate the work you do every day with data.

In addition, being familiar with the terminology and background of relational data modeling can make you a stronger job candidate, as hiring managers appreciate someone who has taken the time to understand the "Why?" behind our every day technology.

## What is data?

Data is readible information. It can come in the form of numbers, characters, images or other things recorded to a durable medium. Data by itself is likely to be meaningless. Take the **data element** "M". By itself, we can say a few things about "M". It's a string. It's one character. In our table of data, we might say that "M" stands in a place that cannot be left ```NULL```. Still, we haven't learned anything.

For data to be useful, we need to interpret it. Suppose "M" is the value a user inputted in a form, meaning male gender. Now, we can make decisions or create logic that deals with this. It has become information. The purpose for which we are writing software can be fulfilled, when data can be interpretted. We might want to match male users to clothing fit for males. We might want to use fitness metrics to determine ideal heart rate for male users.

As professionals dealing with data, our data needs to be as simple and reusable as possible. That's how we isolate meaning and build relationships that support the creation of new information. If we can easily compare gender with average time spent on the site, for example, maybe we can learn new information about our target audience.

We will learn more about data in this article, spelling out the thinking that underlies well organized data in greater detail. That way, we can unlock the potential benefits that data has to offer software developers.

## What is a data model?

conceptual, logical, physical data models

as-is vs to-be

data element cycle

why create a model - (pg 13)

## Why relational data modeling?

Heirarchy, network, relational

properties of relational databases - (pg 30)

primary key, foreign key, migrating

objectives (pg 35) and advantages (pg 39) of relational data modeling

selected rules of the 12 rules of relational data management - (pg 36 - 39)

## How does it work? Math!

requires some basic knowledge of set notation

watershed article - E.F. Codd's relational model of data in 1970 while at IBM

Five primitive operators of Codd's algebra are:
+ the selection
+ the projection
+ the Cartesian product (also called the cross product or cross join)
+ the set union
+ the set difference

Renames

Joins
+ Natural join (⋈)
+ θ-join and equijoin
+ Semijoin (⋉)(⋊)
+ Antijoin (▷)
+ Division (÷)

More joins
+ Outer joins
+ Left outer join (⟕)
+ Right outer join (⟖)
+ Full outer join (⟗)

## Painting the rest of the picture

normalization

entities

attributes

normal forms - (pg 40-53)

universal relations - (pg 41, 43)

## In practice

### Buzz words

pg 57

### Buzz graphics

pg 89

IE 101

## OO Modeling
