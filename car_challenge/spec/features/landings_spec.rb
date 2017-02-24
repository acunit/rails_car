require 'rails_helper'

RSpec.feature "Landings", type: :feature do

  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        pending
      end
      Then 'I can see Welcome to the Car Simulator'
        pending
      end
    end
  end

end
