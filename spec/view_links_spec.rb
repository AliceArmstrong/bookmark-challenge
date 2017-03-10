require 'spec_helper'

RSpec.feature 'it will display the links' do
  scenario 'so the user can see what has been added' do
    Link.create(:title => 'eBay', :url => 'http//www.ebay.co.uk')
    visit "/"
    click_button('View Bookmarks')
    expect(page).to have_content ('http//www.ebay.co.uk')
  end
end
