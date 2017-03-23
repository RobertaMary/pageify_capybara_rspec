describe "the signin process",:type => :feature do
  it "search for something" do
    visit('/')
    home_page.search_text.set "testoq"
    home_page.search_button.click
    results.did_you_mean.find.should have_text "testq"
    save_screenshot('./test.jpg')
  end
end
