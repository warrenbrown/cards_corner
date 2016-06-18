require 'rails_helper'

RSpec.feature 'users can create articles' do
  scenario 'with valid attributes' do
    visit '/'
    click_link 'Add Article'

    fill_in 'Title', with: 'My Title'
    click_button 'Create Article'

    expect(page).to have_content 'Article has been created.'
    expect(page).to have_content 'My Title'
  end
end
