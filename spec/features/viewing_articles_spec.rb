require 'rails_helper'

RSpec.feature 'User can view articles' do
  scenario 'with correct details' do
    article = FactoryGirl.create(:article, title: 'We Them Bobcats')

    visit '/'

    within("#post-preview") do
        click_link "We Them Bobcats"
    end

    expect(page.current_url).to eq article_url(article)  end
end
