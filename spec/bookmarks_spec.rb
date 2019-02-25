require 'bookmarks'

describe Bookmarks do

  it 'returns an array of bookmarks to the controller' do
    bookmarks = Bookmarks.all
    expect(Bookmarks.all).to include("http://www.makersacademy.com")
    expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
    expect(Bookmarks.all).to include("http://www.google.com")
  end


end
