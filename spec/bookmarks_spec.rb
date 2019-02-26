require 'bookmarks'

describe Bookmarks do

  # it 'returns an array of bookmarks to the controller' do
  #   bookmarks = Bookmarks.all
  #   expect(Bookmarks.all).to include("http://www.makersacademy.com")
  #   expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
  #   expect(Bookmarks.all).to include("http://www.google.com")
  # end

  it 'returns a list of all bookmarks to controller from the Bookmark model' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    #Add test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

    bookmarks = Bookmarks.all

    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
    expect(bookmarks).to include("http://www.google.com")
  end

end


# feature test: require 'pg'
#  => true
# connection = PG.connect(dbname: 'bookmark_manager')
#  => #<PG::Connection:0x007fc9c79700e8>
# result = connection.exec('SELECT * FROM bookmarks')
#  => #<PG::Result:0x007fc9c7958628 status=PGRES_TUPLES_OK ntuples=3 nfields=2 cmd_tuples=3>
# 2.4.1 :005 > result.each { |bookmark| p bookmark }
# {"id"=>"1", "url"=>"http://makers.tech"}
# {"id"=>"2", "url"=>"http://www.destroyallsoftware.com"}
# {"id"=>"3", "url"=>"http://www.google.com"}
#  => #<PG::Result:0x007fc9c7830cc8 status=PGRES_TUPLES_OK ntuples=3 nfields=2 cmd_tuples=3>
