require('capybara/rpsec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

descrbe('the index path', {:type => :feature}) do
  it('processes the user entry and returns the number of times a given word appears in a sentence') do
    visit('/')
    fill_in('user_entry', :with => 'The arsonist had oddly shaped feet')
    click_button('send')
    expect(page).to have_content('1')
  end
end
