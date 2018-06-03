require 'player'
describe Player do
    subject(:player){ described_class.new("matthew")}
    
    describe "#name" do
        it 'returns the name' do
            expect(player.name).to eq "matthew"
        end
    end
end