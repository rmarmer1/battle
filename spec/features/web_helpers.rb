def sign_in_and_play
	visit("/")
      fill_in('player1', with: 'Andrea')
      fill_in('player2', with: 'Randy')
      click_button('Submit')
end