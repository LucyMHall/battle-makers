require './app.rb'
require_relative 'web_helpers.rb'

feature 'viewing the homepage' do
  xscenario 'displays Player1 and Player2 names' do
    sign_in_and_play
    expect(page).to have_content 'Lucy Vs Carl'
  end
  xscenario 'displays Player2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Carl's Hit Points: 60"
  end
  xscenario 'allows Player 1 to attack Player 2 and get a confirmation' do
    sign_in_and_play
    click_on 'attack'
    expect(page).to have_content 'Lucy attacked Carl'
  end
  xscenario 'allows Player 2 to attack Player 1 and get a confirmation' do
    sign_in_and_play
    click_on
  end
end

feature 'viewing the attack page' do
  xscenario 'when you click attack it reduces Player 2 HP by 10' do
    sign_in_and_play
    click_on 'attack'
    expect(page).to have_content "Carl's Hit Points: 50"
  end
end
