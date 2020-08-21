# WorldTime

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


"# FlutterLearning-WorldTime" 
1. added screens
2. Routed the screens 
3. added asynchronous code(getData() function) in the      choose location file to simute newtwork requests, as well as the await keywords to understand how it works, read comments for more info
4. location screen set as the initialRoute to demonstrate receiving data from an endpoint using the get function, stored in the response variable for manipulation 
5. Getting actual world time from a worldtime api endpoint, then using the 'datetime' and 'utc' properties to calculate my current local time
6. Setup World time class for usability
7. introduced a try-catch block in the worldtime class in case there is an error. To avoid displaying weird sreens for the user
9. Pass the route data from the loading widget to the home widget
9. Format the time using the intl package by flutter
10. Make the loading screen appealing using the flutter spinkit
11. Added background images and colors based on whether is is day or night time
12. Added a listview builder UI for the choose location screen.
