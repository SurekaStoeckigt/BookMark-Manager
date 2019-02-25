feature 'Viewing bookmarks' do

  scenario 'displays message on index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'displays content of the bookmarks route' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com" 
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
