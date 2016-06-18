require 'rails_helper'

RSpec.feature 'Users can edit articles' do
  scenario 'with valid attributes' do
    article = FactoryGirl.create(:article, title: 'Sponge Bob')

    visit '/'
    click_link 'Sponge Bob'
    click_link 'Edit'

    fill_in 'Title', with: 'Patrick'
    click_button 'Update Article'

    expect(page).to have_content 'Article has been updated.'
    expect(page).to have_content 'Patrick'
  end

end
