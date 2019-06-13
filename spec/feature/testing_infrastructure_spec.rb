require './app.rb'

describe "Homepage", type: :feature do

  it 'gets Player1 and Player2\'s names and displays them'  do
    visit('/names')
    fill_in 'Player_1', with: "Lucy"
    fill_in 'Player_2', with: "Carl"
    click_on 'Submit'
    expect(page).to have_content 'Lucy Vs Carl'
  end


end
