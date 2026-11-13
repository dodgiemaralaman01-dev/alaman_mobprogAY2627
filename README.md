# Dodgie Mar U. Alaman
## 2023-100279
## INF 241

# Lab Activity 1A: File Structuring | Design Pattern

## Discussion

In this activity, I integrated the Image widget into the newsfeed_card.dart file to display post images dynamically. I used two variables, hasImage and postImageAsset, to determine whether a newsfeed post contains an image or not. The hasImage variable is a Boolean value that controls whether the image section will be displayed, while postImageAsset stores the file path of the image.

I also created a separate method called _buildPostImage() to handle the image display. Inside this method, I used Image.asset() to load the image from the assets folder. If the image path is null or the image cannot be loaded, a placeholder is displayed using an icon that indicates that the image is unavailable.

To make the image display dynamic, I used an if (hasImage) condition inside the Column widget. When hasImage is set to true, the post image is displayed. When it is set to false, the image section is hidden, allowing the newsfeed card to display only the user's profile, post content, and other information.
        
Through this implementation, I learned how to use conditional rendering in Flutter to create flexible and reusable widgets. It also makes the newsfeed more organized because each post can have an image or no image depending on the provided data.

