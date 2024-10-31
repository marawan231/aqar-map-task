# AqarMap-Task



## Demo For Ios 
[https://github.com/marawan231/aamar_task/assets/81522801/3a2610c2-5b39-45f8-b674-d9b4cdd0d474](https://github.com/user-attachments/assets/a64c3a53-64ee-4825-9e78-cd54972fb3e7
)

## Demo For Android 

https://github.com/user-attachments/assets/d4c68e21-2bc5-4434-8e3c-20601634bb99






## Overview
This Flutter app demonstrates a clean and efficient way to display a list of movies, with the ability to view detailed information about each movie in a rounded corner dialog.


Key Features:

Movie List: Displays a list of movies, optionally including images.
Movie Details: Shows detailed information about a selected movie in a rounded corner dialog.
Trending Movies: Features a horizontally scrolling list of trending movies.
Clean Architecture: Employs a well-structured architecture to separate concerns and improve maintainability.
State Management: Uses a suitable state management solution (e.g., Provider, Riverpod) to manage the app's state effectively.
Animations: Implements a fade-in animation for the movie details dialog.




## Tools and Packages Used
### Architecture
Clean Architecture: The project adheres to the Clean Architecture pattern, promoting separation of concerns and maintainability.
## Network Requests
### Retrofit:
Utilized for making web service calls, Retrofit simplifies API requests and ensures type safety.
## Local Data Storage
### Shared Preferences & Flutter secure Storage:
Chosen for local data storage, Shared Preferences provides a straightforward key-value storage mechanism.
## State Management
### Cubit:
Employed for state management, Cubit simplifies the management and updating of the application's state.

## Code Generation
### json_serializable and freezed: 
Used for code generation, these tools automate the creation of serialization/deserialization code and enhance the usage of immutable classes.

## How to Run the App
- Make sure you have Flutter and Dart installed on your machine.

- Clone the repository and navigate to the project directory.

- Run the following command to install dependencies:
  flutter pub get



- Connect a device or start an emulator.
- Run the app:
 flutter run




## Additional Packages
dio: HTTP client for making API requests.

dio_smart_retry: Adds smart retry functionality to Dio for handling network issues.

equatable: Simplifies equality comparisons for Dart objects.

flutter_bloc: Implements the BLoC (Business Logic Component) architecture for state management.

flutter_offline: Provides widgets for handling offline and online states.

flutter_screenutil: A Flutter plugin for responsive UI design.

get_it: A simple service locator for Dart and Flutter projects.

logger: A simple logging package for Dart and Flutter.

pretty_dio_logger: Logs Dio HTTP requests in a readable format.

retrofit_generator and retrofit: Generates code for making API requests using Retrofit style.

shared_preferences: For persisting key-value data locally.

internet_connection_checker: Checks the internet connection status.








