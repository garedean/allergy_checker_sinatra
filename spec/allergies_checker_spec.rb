require('capybara/rspec')
require('allergy_checker')

describe('Fixnum#allergies') do
  it('returns an allergy when a number is inputted.') do
    expect((1).allergies).to(eql(["eggs"]))
  end
  it('returns an allergy when a number higher than one is inputted.') do
    expect((2).allergies).to(eql(["peanuts"]))
  end
  it('returns all allergies when a 255 is inputted.') do
    expect((255).allergies).to(eql(["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]))
  end
end
