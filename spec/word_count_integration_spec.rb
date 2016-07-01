require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the index path', {:type => :feature}) do
  it('processes the user entry and returns the number of times a given word appears in a sentence') do
    visit('/')
    fill_in('user_input_string', :with => 'The arsonist had oddly shaped feet')
    fill_in('user_input_word', :with => 'The')
    click_button('Send')
    expect(page).to have_content('1')
  end
  it('returns to home page when link is clicked') do
    visit('/word_count')
    click_link('#home')
    expect(page).to have_content('The future of word parsing is here. Enter your document, and your search term parameters')
  end
end
