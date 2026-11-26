# Dodgie Mar U. Alaman
## 2023-100279
## BSIT-MWA - INF 241
## CTMOBPGL - Mobile Programming

# Lab Activity 0: Flutter Project Setup

## Discussion

In this laboratory activity, I created my first Flutter project using Visual Studio Code and successfully ran the application using an Android emulator. Before starting this activity, I configured my Flutter development environment by installing the Flutter SDK, adding its `bin` folder to the Windows Path environment variable, and checking the installation using the `flutter doctor -v` command, as demonstrated in Lab Activity 0A.

During the project setup, I encountered a problem with the Android Native Development Kit (NDK), which displayed a "Missing NDK" error. This prevented the application from building properly. I troubleshooted the issue by installing and configuring the required NDK components. After resolving the problem, I was able to proceed with building and running my Flutter application successfully.

I created a project under the folder `alaman_mobprogAY2627` and named my Flutter application `alaman_mobprog`. I selected the Empty Application template and used my Pixel 7a Android emulator as the target device. In the `main.dart` file, I used the Flutter Material package and created a basic application using `MaterialApp`, `Scaffold`, `Center`, and `Text` widgets to display the message "Hello World!".

After running the application, the Android emulator successfully displayed the "Hello World!" output. This confirmed that my Flutter project was properly configured and that the application could run on the selected emulator.

Overall, this activity helped me understand the process of creating, configuring, and running a Flutter application. I also learned that resolving development environment issues, especially missing dependencies such as the Android NDK, is important for successful application development. For future activities, I will make sure that the Flutter SDK, Android SDK, NDK components, and emulator are properly configured before building and running my projects.


# Lab Activity 1A: File Structuring | Design Pattern

## Discussion

In this activity, I integrated the Image widget into the newsfeed_card.dart file to display post images dynamically. I used two variables, hasImage and postImageAsset, to determine whether a newsfeed post contains an image or not. The hasImage variable is a Boolean value that controls whether the image section will be displayed, while postImageAsset stores the file path of the image.

I also created a separate method called _buildPostImage() to handle the image display. Inside this method, I used Image.asset() to load the image from the assets folder. If the image path is null or the image cannot be loaded, a placeholder is displayed using an icon that indicates that the image is unavailable.

To make the image display dynamic, I used an if (hasImage) condition inside the Column widget. When hasImage is set to true, the post image is displayed. When it is set to false, the image section is hidden, allowing the newsfeed card to display only the user's profile, post content, and other information.
        
Through this implementation, I learned how to use conditional rendering in Flutter to create flexible and reusable widgets. It also makes the newsfeed more organized because each post can have an image or no image depending on the provided data.

