I created a Dokcer file that when built with docker creates an ubuntu based image.
When the image is ran on port 80 it start the game on localhost
if the image is hosted on a cloud provider service liks AWS beanstalk. The game is accessible globally.
To change and make your own game container, just put your game on a github repo then use it in Docker file curl command. and change the unziped directory name.
The Rest will work the Same.
