# Vegas in Miami Small Business Website Backend

This website was designed for a small business owner who offers classes and workshops. In addition to promoting her personal brand and services, it is also the interface for bookings and payments.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General info
This repository is the Rails backend API that works with a React client side application. It uses ActiveAdmin to provide an Admin dashboard for the business owner to create services, and schedule available timeslots. Non-admin users are signed in using Devise and use forms on the React client-side to create bookings.

## Technologies
* Ruby - version 2.6.1
* Rails - version 6.0.0
* Devise
* ActiveAdmin
* PostgreSQL
* Fast JSON API

## Setup
For development run on localhost:3000


## Features
* ActiveAdmin for admin dashboard
* Devise handles authentication for users. Each user has a has_one_to_one relationship with a student. 
* The student model can purchase credits for class sessions, book sesssions, and keeps track of available credits.
* All data is persisted in this application and accessed by the user through a React single page application.
* Backend is hosted on Heroku 

## To-do list:
* Deploy to Heroku
* Create API requests on frontend and test that all actions in controllers return correct information in JSON format.
* Research and debug activeadmin dashboard for models that have relationships to students.

## Status
Backend models and serializers are functional. Not connected to frontend application.

## Inspiration
This project was inspired by Ms. Vegas who follows her dreams.

## Contact
This project was created by Marie C. Burns. Please email me with any questions or great ideas: mariecburns@gmail.com
