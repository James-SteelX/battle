require 'player_attack'

 describe Attack do
   subject(:attack) { described_class }
   let(:player) { double :player }

   describe '#.tackle' do
     it 'damages the player' do
       expect(player).to receive(:receive_damage)
       attack.tackle(player)
     end
   end

   describe '#.fire_ball' do
     it 'deals a set amount of damage to the player' do
       expect(player).to receive(:receive_damage)
       attack.fire_ball(player)
     end
   end

   describe '#.death_punch' do
     it 'has a chance to deal big damage to player' do
       expect(player).to receive(:receive_damage)
       attack.death_punch(player)
     end
   end

   describe '#.computer_attack' do
     it 'returns a random attack' do
       expect(player).to receive(:receive_damage)
       attack.computer_attack(player)
     end
   end


end
