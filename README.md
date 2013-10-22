ImageAnnotation
===============

Used to annotate images for based off image size

I created this code to help me annotate images for a project.  The code reads all the images from a path and then asks the user to put a bounding box on the area they are selecting.  Then the user should approximate the scale of the object and finally they will make two clicks with which should be the height of the object.  These two clicks are then used to calculate the size of the object in pixels.  The scale of the image, bounding box, the scale of the image, the x and y coordinates, and the size of object are all stored in a .mat file named after the image.  

I think plot the scale vs. the number of pixels and the number of pixels vs the scale 
