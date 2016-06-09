# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "Players attack to score points" do	
	scenario "player one attacks player two" do 
		sign_in_and_play
		click_button("Attack")
		expect(page).to have_content ('Andrea has attacked Randy')
	end
end
