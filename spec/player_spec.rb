require 'player'

describe Player do

  it 'returns their own name' do
    player = Player.new('Dusty')
    expect(player.name).to eq 'Dusty'
  end
end