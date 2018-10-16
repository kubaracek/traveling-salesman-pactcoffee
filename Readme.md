# Warning

I have done this in late 2013 or early 2014 (I Think). Most of the assumptions are probably invalid today. Please note that this was done in maybe two days of my free time including the research of the problem. Better solutions do exist already. For example [A parallel cooperative hybrid method based on ant colony optimization and 3-Opt algorithm for solving traveling salesman problem](https://link.springer.com/article/10.1007/s00500-016-2432-3)

# Why this exists

While back when I was working for PactCoffee we had a delivery courier (cyclist) that needed to deliver a coffee to households and offices around Metropolitant London.

This was my proposal / proof of concept to show management that his route could be precalculated.

## known issues
  - This solution doesn't respect obstacles eg. neither water (river Themes) nor buildings
  - Given the nature of the algorithm it does not always delivers the same result


# Implementation

My implementation uses a genetic algorithm called Ant Colony Optimization. The description is inside the app I created, here's a screenshot.

![Ant Colony Optimization](public/ant-colony.png)

# How to run

It has been built on Ruby 2.4.0 so please use this version when trying to run the app
Database preparing

```
rake db:migrate db:seed
```

This will seed the database with locations of about 50 addresses of customers

run the app with

```
rails s
```

and navigate your browser to

```
http://localhost:3000/map
```
