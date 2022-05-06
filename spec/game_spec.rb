require 'game'

describe Game do

  it 'has attack method' do
    player_dbl = double('Haribo')
    expect(player_dbl).to receive(:received_damage)
    subject.attack(player_dbl)

  end

end
