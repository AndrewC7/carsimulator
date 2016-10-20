require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature do

  # Given that I have entered the make and model year, when I click on a button labelled Simulate Car, then I am taken to a status page showing make, model year and initial speed of the car
  context 'Creating a Car to Simulate' do
    Steps 'Creating a Car' do
      Given 'I am on the landing page' do
        visit '/'
      end
      When 'I fill in the car make and model' do
        fill_in 'make', with: 'Ferrari'
        fill_in 'model', with: '2020'
        #put in click submit button step here
      end
      Then 'Redirect to CarInfo Page When Button is Clicked' do
        expect(page).to have_content "2020 Ferrari"
        expect(page).to have_content "0 MPH"

      end

    end
  end
end
