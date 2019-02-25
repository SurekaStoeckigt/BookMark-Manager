require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    "http://www.makersacademy.com, http://www.destroyallsoftware.com, http://www.google.com"
  end

run! if app_file == $0

end
