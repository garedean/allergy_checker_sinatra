require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the results path', {:type => :feature}) do
  it('displays a series of allergies for a given score') do
    visit('/')
    fill_in('allergy_score', :with => '255')
    click_button('Find my allergies!')
    expect(page).to have_content("cats, pollen, chocolate, tomatoes, strawberries, shellfish, peanuts, eggs")
  end
end
