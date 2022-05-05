feature 'Testing infrastructure' do
  # scenario 'Can run app and check page content' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'Has a form submission field' do
    visit('/')
    expect(page).to have_field 'player_1_name'
  end
  scenario 'Has a second form submission field' do
    visit('/')
    expect(page).to have_field 'player_2_name'
  end

end

