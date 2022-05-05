feature 'Hit points' do
  scenario 'expecting player 2\'s hit point count after name submission' do
    visit('/')
    fill_in :player_1_name, with: 'Dusty'
    fill_in :player_2_name, with: 'Haribo'
    click_button 'Submit'
    expect(page).to have_content 'Haribo: 50hp'
  end
end

#we have basically reproduced the same spec we had for 'enter_names'