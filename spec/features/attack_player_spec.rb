feature 'Attack player' do
  scenario 'attack player 2 after submitting names' do
    sign_in_and_attack_p2
      expect(page).to have_content 'Dusty attacked Haribo!'
  end
end