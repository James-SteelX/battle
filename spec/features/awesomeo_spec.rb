require 'spec_helper'

 feature 'Automated player' do

   scenario 'If no player 2 is inputted it will revert to the Automated service' do
     play_against_robot
     expect(page).to have_content('Dave vs. Awesom-O')
   end
   scenario 'automated player will automatically attack with no prompt' do
     play_against_robot
     attack_and_confirm
     expect(page).to have_content("Awesom-O attacked Dave")
   end

 end
