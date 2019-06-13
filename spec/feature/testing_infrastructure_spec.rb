require './app.rb'
require_relative 'web_helpers.rb'

describe "/play", type: :feature do
  it 'gets Player1 and Player2\'s names and displays them'  do
    sign_in_and_play
    expect(page).to have_content 'Lucy Vs Carl'
  end
  it 'displays Player2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Carl Hit Points: 60'
  end
  it 'allows Player 1 to attack Player 2 and get a confirmation' do
    sign_in_and_play
    click_on 'attack'
    expect(page).to have_content 'Lucy attacked Carl'
  end
end

describe "/attacked", type: :feature do
  it 'reduces Player 2 hp by 10' do
    sign_in_and_play
    click_on 'attack'
    expect(page).to have_content 'Carl Hit Points: 50'
  end
end
