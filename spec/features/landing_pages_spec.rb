require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do

    # Given that I am on the car simulator landing page, then I see Welcome to the Car Simulator
  context 'On The Landing Page' do
    Steps 'Being Welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end #end of Given
      Then 'I can see a welcome message'do
        expect(page).to have_content("Welcome To The Car Simulator")
      end #end of then

    end #end of Steps
  end #end of context
end
