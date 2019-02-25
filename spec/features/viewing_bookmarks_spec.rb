feature 'Viewing bookmarks' do
  scenario 'displays message on index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
