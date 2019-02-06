require 'rails_helper'
# As a user
# When I visit "/"
# And I fill in the search form with 80203 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

RSpec.feature "As a user" do
  describe "when a user inputs the zip code" do
    it "should do whatever" do
      visit root_path

      fill_in "name",	with: "80203"
      click_on "Locate"
      expect(current_path).to eq(search_path)
    end
  end
end