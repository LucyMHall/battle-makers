require './app.rb'
require_relative 'web_helpers.rb'

describe "Homepage", type: :feature do
  it 'gets Player1 and Player2\'s names and displays them'  do
    sign_in_and_play
    expect(page).to have_content 'Lucy Vs Carl'
  end
end

describe "/names", type: :feature do
  it 'displays Player2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Carl Hit Points: 60'
  end
end
