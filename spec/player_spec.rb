require 'player'

describe Player do
  subject(:player) {Player.new('Dusty')}
  it 'returns their own name' do
    player = Player.new('Dusty')
    expect(player.name).to eq 'Dusty'
  end
  it 'returns a defualt hitpoint count' do
   expect(player.hitpoints).to eq Player::DEFAULT_HITPOINTS
  end


  it 'has a #received_damage function that decreases hitpoints' do
    expect {player.received_damage}.to change {player.hitpoints}.by -10
  end

end