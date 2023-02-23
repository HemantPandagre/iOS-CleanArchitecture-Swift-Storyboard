# iOS-CleanArchitecture-Swift-Storyboard
A demo project showcasing the setup of the swift and storyboard app with **'Clean Architecture'**.

Simple example has been implemented using **'Protocol oriented programming'** and **'SOLID'** principles in this project. 

Developer can learn how to implement **'Clean Architecture'** in easy way and how they transfer data **'forward and reverse'** mode.

**1) For forward data transfer** -  via Dependency injection

**2) For reverse data transfer** -  via Protocol

## Flow Diagram

![clean-swift-1x](https://user-images.githubusercontent.com/68166401/174749973-61aa456a-fd70-40ee-833e-8f2b7b1eeb1e.png)


## Responsibilities of Components :

**1) Viewcontroller:**

  The 'Viewcontroller' file defines a scene and contains a view or views. it keeps instances of the interactor and router. Passes the actions from views to the interactor (output) and takes the presenter actions as input.

**2) Interactor:**

  The 'Interactor' file is responsible for the business logic. Keeps a reference to the presenter. The interactor should never import the UIKit.

**3) Presenter:**

  The 'Presenter' file is responsible for transforming the data into viewmodel and send to the view for displaing the data.

**4) Router:**

  The 'Router' file is responsible for navigation process and data passing.

**5) Worker:**

  The 'Worker' file is responsible for sending and receiving the data from server or local database or any other source. 
  
**6) Models:**
  The 'Models' file is responsible for declare all models for specific screen.
  
**7) Configurator:**

  The 'Configurator' file is responsible for configuring all other files like Viewcontroller, interactor, presenter, router and datastore.

## Configure Templates :

   Developer can save the time with configure this templates in xcode. They don't need to create all files every time. They can use this template and create all files in one time for one screen with default configuration related to clean architecture.

## Setup Template:

   **Path** - /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates

   1. Goto 'Above' path from finder.
   2. Copy 'Clean Architecture - Swift' folder in "Template" in this repository.
   3. then paste in above mentioned path.
   4. Hurray!! Now You can use this from xcode.


![Screenshot 2022-06-21 at 2 21 07 PM](https://user-images.githubusercontent.com/68166401/174759293-f68a009d-000f-49ae-aebb-34a85c9e76f5.png)


![Screenshot 2022-06-21 at 2 21 19 PM](https://user-images.githubusercontent.com/68166401/174759319-5e18f7a0-231e-4624-beac-66b5393b8076.png)


## Thank You

## Author

Hemant Pandagre, hemantpandagre.techie@gmail.com

