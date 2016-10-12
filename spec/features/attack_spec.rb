<<<<<<< HEAD
require 'spec_helper'

feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduce player 2 hit points by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Mittens: 60hp'
    expect(page).to have_content 'Mittens: 50hp'
  end
=======
feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduce hit points by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

>>>>>>> 1a2558bfe51428dd6a492500163f110ca1ace7e9
end
