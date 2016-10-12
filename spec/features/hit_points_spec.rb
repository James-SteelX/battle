<<<<<<< HEAD
require 'spec_helper'

feature 'View hit points' do

 scenario 'see Player 2 hit points' do
  visit('/')
  sign_in_and_play
  expect(page).to have_content 'Mittens: 60hp'
 end

 scenario 'see Player 1 hit points' do
   visit('/')
   sign_in_and_play
   expect(page).to have_content 'Dave: 60hp'
 end

=======
feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
>>>>>>> 1a2558bfe51428dd6a492500163f110ca1ace7e9
end
