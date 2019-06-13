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

describe "/names", type: :feature do
  it 'displays Player2\'s hit points' do
    visit('/names')
    fill_in 'Player_1', with: "Lucy"
    fill_in 'Player_2', with: "Carl"
    click_on 'Submit'
    expect(page).to have_content 'Carl Hit Points: 60'
  end
end
