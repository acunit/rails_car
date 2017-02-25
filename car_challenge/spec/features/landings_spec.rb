require 'rails_helper'

RSpec.feature "Landings", type: :feature do
# Given that I am on the car simulator landing page, then I see Welcome to the Car Simulator
  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/car/landing'
      end
      Then 'I can see Welcome to the Car Simulator' do
        expect(page).to have_content("Welcome to the Car Simulator")
      end
    end
  end

end
