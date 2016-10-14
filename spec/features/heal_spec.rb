require 'spec_helper'

feature 'Heal' do

 scenario 'Heal option isnt available if full health' do
   sign_in_and_play
   expect(page).not_to have_content('Heal yourself!')
 end


  before do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    click_button 'Heal!'
  end

  scenario 'Player 1 heals themselves' do
    expect(page).to have_content 'Dave used Heal!'
  end

  scenario 'Using heal forefits your turn' do
    click_button 'OK'
    expect(page).to have_content "It's Mittens's turn!"
  end
end
