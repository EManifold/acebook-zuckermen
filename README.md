[![Build Status](https://travis-ci.org/EManifold/acebook-zuckermen.svg?branch=master)](https://travis-ci.org/EManifold/acebook-zuckermen) [![Test Coverage](https://api.codeclimate.com/v1/badges/7fda849bdfddf3bc3ed5/test_coverage)](https://codeclimate.com/github/EManifold/acebook-zuckermen/test_coverage) [![Maintainability](https://api.codeclimate.com/v1/badges/7fda849bdfddf3bc3ed5/maintainability)](https://codeclimate.com/github/EManifold/acebook-zuckermen/maintainability)

# Acebook

[Description](#description) | [Live Demo](#live-demo) | [The Team](#the-team) | [Getting Started](#getting-started) | [Database Setup](#database-setup) | [How to Run the Tests](#how-to-run-the-tests) | [How to Run the App](#how-to-run-the-app) | [Technologies Used](#technologies-used) | [Code Quality](#code-quality) | [Continuous Integration](#continuous-integration) | [Trello Board](#trello-board) | [Progress Report](#progress-report) | [How To Contribute To This Project](#how-to-contribute-to-this-project)

## Description

Façade Brochuré - A superior classy alternative to Facebook. The fullstack web app is packed full of impressive features. Users can sign up, log in, post and comment using our fancy UI. For a more personalised experience, users can choose between a range of themes and fonts for their individual newsfeed and wall. Users can be confident in our highly secure system that protects their sensitive password data and does not allow other users to post on their behalf. Watch this space for new exciting features that Mark Zuckerberg could only dream of.

## Live Demo

The application is deployed to Heroku at this link: [https://acebook-zuckerman.herokuapp.com](https://acebook-zuckerman.herokuapp.com/).

## The Team

This was a group project during weeks 8 and 9 at [Makers Academy](https://makers.tech/). The team was composed by:

* [Ellie Manifold](https://github.com/EManifold)
* [Harry Mumford](https://github.com/HarryMumford)
* [Andrea Diotallevi](https://github.com/AndreaDiotallevi)
* [David Bacall](https://github.com/dbacall)

## Getting Started

* Clone this repository and change into it
* Install all the dependencies with ```bundle```
* Install postgreSQL with ```brew install postgresql```
* Make sure you restart the server with ```brew services restart postgresql```

## Database Setup

* Access to the database is controlled by an ORM, ActiveRecord. ActiveRecord rake tasks which are used to migrate the development and test databases. 
* To migrate the development and test databases, please run the following command:
  ```
  $ rake db:create
  ```
* To poplulate the databases with the appropriate tables, run the following migrations:
  ```
  $ rake db:migrate
  $ rake db:migrate RACK_ENV=test
  ```

## How to Run the Tests

To run all the test type ```rspec```

## How to Run the App

To start the local server type ```ruby app.rb``` and navigate to ```localhost:4567```

### Technologies Used

* Ruby on Rails
* JavaScript
* JQuery
* Bootstrap
* Git

## Code Quality

To run the linter type ```rubocop```

## Continuous Integration

[TravisCI](https://travis-ci.com/) has been use for continuous integration and automatic deployment to [Heroku](https://dashboard.heroku.com)

## [Trello Board](https://trello.com/b/36aeqHBo/zuckermen-acebook)

## [Progress Report](https://github.com/EManifold/acebook-zuckermen/blob/master/progress-report.md)

## How To Contribute To This Project

See [CONTRIBUTING.md](CONTRIBUTING.md)
