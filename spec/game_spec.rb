require 'game'

describe Game do
  let(:player_1) { double("Dusty")}
  let(:player_2) { double("Haribo")}
  subject(:game) { Game.new(player_1, player_2)}

  it 'has attack method' do
    player_dbl = double('Haribo')
    expect(player_dbl).to receive(:received_damage)
    game.attack(player_dbl)
  end

  it 'has #player_1 method' do
    expect(game.player_1).to eq player_1
  end

  it 'has #player_2 method' do
    expect(game.player_2).to eq player_2
  end


  it 'when initialized with correct arguments' do
    expect(Game.new('Dusty', 'Haribo')).to be_a(Game) 
  end

end
