require "capybara/rspec"
require_relative "../../app"

  #As two Players,
  #So we can play a personalised game of Battle,
  #We want to Start a fight by entering our names and seeing them
  feature "players use a form to enter their names" do
    scenario "player names are displayed onscreen" do
      visit("/")
      fill_in('player1', with: 'Andrea')
      fill_in('player2', with: 'Randy')
      click_button('Submit')
      expect(page).to have_content("Andrea -vs- Randy")
    end
  end
