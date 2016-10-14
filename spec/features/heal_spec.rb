require 'spec_helper'

feature 'Heal' do
  scenario 'Player 1 heals themselves' do
    sign_in_and_play
    click_button 'Heal!'
    expect(page).to have_content 'Dave used Heal!'
  end

  scenario 'Using heal forefits your turn' do
    sign_in_and_play
    click_button 'Heal!'
    click_button 'OK'
    expect(page).to have_content "It's Mittens's turn!"
  end
end
