require 'game'

describe Game do
    subject(:game) { described_class.new(args) }
    let(:args) {{:player_1 => :paper, :player_2 => :rock }}

    describe 'player choice' do
        it 'player_1 choice is' do
            expect(game.player_1).to eq :paper
        end

        it 'player_2 choice is' do
            expect(game.player_2).to eq :rock
        end
    end

    describe 'outcome' do
        subject(:win_game) { described_class.new(:win_args)}
        subject(:draw_args) { described_class.new(:draw_args)}
        subject(:lose_args) { described_class.new(:draw_args)}

        let(:win_args) {{:player_1 => :paper, :player_2 => :rock }}
        let(:draw_args) {{:player_1 => :scissors, :player_2 => :scissors }}
        let(:lose_args) {{:player_1 => :rock, :player_2 => :paper }}

    end
end