def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Dusty'
    fill_in :player_2_name, with: 'Haribo'
    click_button 'Submit'
end

def sign_in_and_attack_p2
  visit('/')
    fill_in :player_1_name, with: 'Dusty'
    fill_in :player_2_name, with: 'Haribo'
    click_button 'Submit'
    click_button 'Attack!'
end