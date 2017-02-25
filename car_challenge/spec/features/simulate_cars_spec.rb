require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature do
  context 'Creating a car for simulating' do
    Steps 'Creating a car' do
      Given 'I am on the landing page' do
        visit 'car/landing'
      end
      When 'I fill out the car form with make model and year' do
        fill_in 'make', with: 'Ford'
        fill_in 'model', with: 'Bronco'
        fill_in 'year', with: '1995'
      end
      And 'I can submit the information' do
        click_button 'Simulate Car'
      end
      Then 'I will be redirected to a status page showing make, model, year, and speed of the car' do
        expect(page).to have_current_path("/simulator/status")
        expect(page).to have_content("Car: Ford / Bronco / 1995")
        expect(page).to have_content("Speed: 0 mph")
        expect(page).to have_content("Lights: Off")
      end
      And 'I can click the accelerate button' do
        click_button 'Accelerate'
      end
      Then 'The speed will go up by 10 mph' do
        expect(page).to have_content("Speed: 10 mph")
      end
      And 'I can click the brake button' do
        click_button 'Brake'
      end
      Then 'The speed will go down by 7 mph' do
        expect(page).to have_content("Speed: 3 mph")
      end
      And 'I can click the brake button' do
        click_button 'Brake'
      end
      Then 'The speed will go down to 0 mph' do
        expect(page).to have_content("Speed: 0 mph")
      end
      And 'I can turn the lights on by clicking the light switch button'do
        click_button 'Light Switch'
      end
      Then 'The lights will turn display as on' do
        expect(page).to have_content("Lights: On")
      end
      And 'I can turn the lights off by clicking the light switch button'do
        click_button 'Light Switch'
      end
      Then 'The lights will turn display as on' do
        expect(page).to have_content("Lights: Off")
      end
    end
  end
end
