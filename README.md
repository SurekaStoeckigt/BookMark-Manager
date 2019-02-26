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

Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql

rackup -p 3000
`localhost:3000/bookmarks`
