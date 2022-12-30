# city_dangers_alert

A project where we combined the front end with the back end to get a functional mobile application

## Brief description

We used flask from python for the API and the connection with azure
We created a docker container for the API and used it in an Azure AppService
Implemented 2 queue triggered Azure Functions in python to deal with the incoming POST requests for creating new users and new dangers
Implemented 1 time triggered Azure Function in python to create statistics of the total number of dangers and the number of solved dangers

For the Mobile Apps we used Flutter
We created one mobile app where users can: 
- login and register using Google Firebase
- view all dangers on the map
- mark a new danger on the map
- access their profile page where they can see:
  - the number of dangers they submitted 
  - the number of solved dangers from their list
  - a list of all their submitted dangers
  - the points they accumulated
And another mobile app, as an admin dashboard where the admin can:
- view all the dangers in a list
- select individual dangers and either mark them as solved or delete them
