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
  The 'Presenter' file is responsible for transforming the data into viewmodel and send to the view for displaing the data.

###### Router:
  The 'Router' file is responsible for navigation process and data passing.

###### Presenter:
  The 'Presenter' file is responsible for sending and receiving the data from server or database or any other source.

## Configure Templates :

 ###### Presenter: 
   Developer can save the time with configure this templates in xcode. They don't need to create all files every time. They can use this template and create all files in one time for one screen with default configuration related to clean architecture.

###### Setup Template:

   **Path** - /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates

   1. Goto 'Above' path from finder.
   2. Copy 'Clean Architecture - Swift' folder in "Template" in this repository.
   3. then paste above mentioned path.
   4. Hurray!! Now You can use this from xcode.


![Screenshot 2022-06-21 at 2 21 07 PM](https://user-images.githubusercontent.com/68166401/174759293-f68a009d-000f-49ae-aebb-34a85c9e76f5.png)


![Screenshot 2022-06-21 at 2 21 19 PM](https://user-images.githubusercontent.com/68166401/174759319-5e18f7a0-231e-4624-beac-66b5393b8076.png)


##-----------**Thank You**--------------
