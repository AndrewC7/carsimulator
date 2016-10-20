require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature do

  # Given that I am on the landing page, then I can create a car based on make and model year of the car to be simulated.
  context 'Creating a Car to Simulate' do
    Steps 'Creating a Car' do
      Given 'I am on the landing page' do
        visit '/'
      end
      When 'I fill in the car make and model' do
        fill_in 'Make', with: 'Ferrari'
        fill_in 'Model', with: '2020'
      end
    end
  end
end
