require 'rails_helper'

RSpec.feature 'users can create articles' do
  before do
    visit '/'
    click_link 'Add Article'
  end
  scenario 'with valid attributes' do
    fill_in 'Title', with: 'My Title'
    click_button 'Create Article'

    expect(page).to have_content 'Article has been created.'
    expect(page).to have_content 'My Title'
  end

  scenario 'with invalid attributes' do
    fill_in 'Title', with: " "
    click_button 'Create Article'

    expect(page).to have_content 'Article has not been created.'
  end
end
