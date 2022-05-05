def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Dusty'
    fill_in :player_2_name, with: 'Haribo'
    click_button 'Submit'
end