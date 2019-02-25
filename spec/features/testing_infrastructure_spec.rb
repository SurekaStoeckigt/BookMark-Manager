feature 'displays page title' do
  scenario 'displays hello world message' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
