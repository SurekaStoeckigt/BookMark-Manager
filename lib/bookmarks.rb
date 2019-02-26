require 'pg'

class Bookmarks


  def initialize
  end

#use pg to to connect to PostgreSQL bookmark manager
#retireve all bookmarks from bookmarks table
#extract url from database response
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT*FROM bookmarks;")
    result.map {|bookmark| bookmark['url']}
  end

end
