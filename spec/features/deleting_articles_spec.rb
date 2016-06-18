require 'rails_helper'
RSpec.feature 'Users can delete articles' do
  scenario 'successfully' do
    article = FactoryGirl.create(:article, title: 'Batman')

    visit '/'

    click_link 'Batman'
    click_link 'Delete Article'

    expect(page).to have_content 'Article has been deleted.'
    expect(page.current_url).to eq root_url
    expect(page).to have_no_content 'Batman'
  end
end
