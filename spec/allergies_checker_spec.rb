require('capybara/rspec')
require('allergy_checker')

describe('Fixnum#allergy_checker') do
  it('returns an allergy when a number is inputted.') do
    expect((1).allergy_checker()).to(eql("eggs"))
  end

  




end
