require 'rails_helper'

RSpec.feature 'Users can create comments' do
  let(:article) { FactoryGirl.create(:article) }
  scenario 'with valid attributes' do
    visit article_path(article)

    fill_in 'Name', with: 'Warren'
    fill_in 'Body', with: ' This is great'
    click_button 'Create Comment'

    expect(page).to have_content 'Comment has been created.'
    expect(page).to have_content 'This is great'
  end
end
