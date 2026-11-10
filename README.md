# Dodgie Mar U. Alaman
# 2023-100279
# INF 241

# Lab Activity 0: Flutter Project Setup

## Discussion

In this laboratory activity, I created my first Flutter project using Visual Studio Code and successfully ran the application using an Android emulator. Before starting this activity, I configured my Flutter development environment by installing the Flutter SDK, adding its `bin` folder to the Windows Path environment variable, and checking the installation using the `flutter doctor -v` command, as demonstrated in Lab Activity 0A.

During the project setup, I encountered a problem with the Android Native Development Kit (NDK), which displayed a "Missing NDK" error. This prevented the application from building properly. I troubleshooted the issue by installing and configuring the required NDK components. After resolving the problem, I was able to proceed with building and running my Flutter application successfully.

I created a project under the folder `alaman_mobprogAY2627` and named my Flutter application `alaman_mobprog`. I selected the Empty Application template and used my Pixel 7a Android emulator as the target device. In the `main.dart` file, I used the Flutter Material package and created a basic application using `MaterialApp`, `Scaffold`, `Center`, and `Text` widgets to display the message "Hello World!".

After running the application, the Android emulator successfully displayed the "Hello World!" output. This confirmed that my Flutter project was properly configured and that the application could run on the selected emulator.

Overall, this activity helped me understand the process of creating, configuring, and running a Flutter application. I also learned that resolving development environment issues, especially missing dependencies such as the Android NDK, is important for successful application development. For future activities, I will make sure that the Flutter SDK, Android SDK, NDK components, and emulator are properly configured before building and running my projects.
