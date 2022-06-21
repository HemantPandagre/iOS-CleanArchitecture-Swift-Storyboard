# iOS-CleanArchitecture-Swift-Storyboard
A demo project showcasing the setup of the swift and storyboard app with Clean Architecture.

Simple example has been implemented using 'Protocol oriented programming' and 'SOLID' principles in this project. 

Developer can learn how to implement 'Clean Architecture' in easy way and how they transfer data 'forward and reverse' mode.

For forward data transfer -  via Dependency injection

For reverse data transfer -  via Protocol

## Flow Diagram

![clean-swift-1x](https://user-images.githubusercontent.com/68166401/174749973-61aa456a-fd70-40ee-833e-8f2b7b1eeb1e.png)


## Responsibilities of Components :

###### Viewcontroller: 
  The 'Viewcontroller' file is responsible for configuring all components like Interactor, Presenter, Router, Worker and DataStore for transfering the data.

###### Interactor:
  The 'Interactor' file is responsible for the business logic.

###### Presenter:
  The 'Presenter' file is responsible for transforming the data into viewmodel and send to the view (___VARIABLE_sceneName___ViewController) for displaing the data.

###### Router:
  The 'Router' file is responsible for navigation process and data passing.

###### Presenter:
  The 'Presenter' file is responsible for sending and receiving the data from server or database or any other source.




