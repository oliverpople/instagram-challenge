require 'rails_helper.rb'

feature 'Creating a new post' do
  scenario 'user can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/test.jpg")
    fill_in 'Caption', with: '#test'
    click_button 'Create Post'
    expect(page).to have_content('#test')
    expect(page).to have_css("img[src*='test.jpg']")
  end
end
