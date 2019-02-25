feature 'displays page title' do
  scenario 'displays hello world message' do
    visit('/')
    expect(page).to have_content "Hello, world"
  end
end
