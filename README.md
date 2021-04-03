# MyRecipes

This is book of recipes. The MPV version will have a list of recipes by registered users, comments, voting and chat for real-time discussion of recipes. The user can also upload pictures of the recipe. 

Add-ons - categories so can search by ingredients
Allow users to make their own copy of the cookbook and modify ingredients/amounts.
Allow more than one photo 
Have top 50 arrange by image or list

## [DEMO](https://laurie-recipes.herokuapp.com/ )

***
Recipes - name (min-max), description (min-max), FK: user
Users - name (min-max), email (min-max, uniq, valid), optional: first_name, last_name
***

Gems Used:
- RSpec for testing
- PG for the db
- BS4 for UI
- Ruby 2.6 on Rails 5.2
- Devise for Auth with NameOfPerson
<!-- Decisions: Since using Rails 5, do I want to use webpack or sprockets? -->

<!-- kinda doing a parallel ~follow  rspec and packt stuff... -->
