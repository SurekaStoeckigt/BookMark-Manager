require 'pg'

class Bookmarks


  def initialize
  end

  def self.all
    #making sure that we use the test database when testing and the alternative one when running app
    if ENV['ENVIRONMENT'] == 'test'
    #installing PG made a PG object available in Ruby
    #connects to PG passing in the database name as the argument, so that an object(connection) that includes the database is returned
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end  
    #connection object will receive a query in the form of string for exec method
    #calls exec on the database object with query string as the argument
    result = connection.exec("SELECT*FROM bookmarks;")
    #displays the url of each bookmark.
    result.map {|bookmark| bookmark['url']}
  end

end
