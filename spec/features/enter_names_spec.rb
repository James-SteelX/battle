<<<<<<< HEAD
require 'spec_helper'

feature 'enter names' do
    scenario 'submitting names' do
      sign_in_and_play
        expect(page).to have_content 'Dave vs. Mittens'
    end
=======
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
>>>>>>> 1a2558bfe51428dd6a492500163f110ca1ace7e9
end
