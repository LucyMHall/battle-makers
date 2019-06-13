require './app.rb'

describe "Testing Infrastructure", type: :feature do

  it 'gets Player1 and Player2\'s names and displays them'  do
    visit('/')
    @one = "Lucy"
    @two = "Carl"
    fill_in 'Player_1', with: @one
    fill_in 'Player_2', with: @two
    click_on 'Submit'
    expect(page).to have_content 'Player 1: Lucy V Player 2: Carl'
  end


end
