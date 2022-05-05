feature 'Hit points' do
  scenario 'expecting player 2\'s hit point count after name submission' do
    sign_in_and_play
    expect(page).to have_content 'Haribo: 50hp'
  end
end

#we have basically reproduced the same spec we had for 'enter_names'