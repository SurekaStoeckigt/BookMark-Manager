# BookMark-Manager

So that I can navigate to regularly used websites quickly,
I would like to see a list of bookmarks.

client               
client visits '/bookmark' path

browser
browser sends request to controller

controller
gets request from browser
ask Bookmark class to send back an array of all bookmarks

Bookmark Class
gets request from controller
sends array of all bookmarks back to controller

controller
sends array of all bookmarks to webpage

ERB Bookmark (webpage)
displays list to client
