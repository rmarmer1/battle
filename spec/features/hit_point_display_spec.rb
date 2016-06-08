require "capybara/rspec"
require_relative "../../app"

  #As Player 1,
  #So I can see how close I am to winning
  #I want to see Player 2's Hit Points
  feature "viewing hit points" do
    scenario "player 1 can see player 2's hit points" do
      names = %w(Andrea Randy Giorgia Jill)
      current_name = names.sample
      visit("/")
      fill_in('player1', with: 'Andrea')
      fill_in('player2', with: current_name)
      click_button('Submit')
      expect(page).to have_content("#{current_name}'s HitPoints: 1")
    end 
  end  
