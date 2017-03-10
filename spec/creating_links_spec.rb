feature 'A new links can be added' do
  scenario 'Once link has been added, the links is updated' do
    visit "/bookmarks/new"
    fill_in("title", with: "Facebook")
    fill_in("url", with: "www.facebook.com")
    click_button "Create Bookmark"
    expect(page).to have_content 'www.facebook.com'
  end
end
