require 'rails_helper'

RSpec.feature 'Users can edit articles' do
  before do
    article = FactoryGirl.create(:article, title: 'Sponge Bob')

    visit '/'
    click_link 'Sponge Bob'
    click_link 'Edit'
  end

  scenario 'with valid attributes' do
    fill_in 'Title', with: 'Patrick'
    click_button 'Update Article'

    expect(page).to have_content 'Article has been updated.'
    expect(page).to have_content 'Patrick'
  end

  scenario 'with invalid attributes' do
    fill_in 'Title', with: ' '
    click_button 'Update Article'

    expect(page).to have_content 'Article was not updated.'
  end
end
