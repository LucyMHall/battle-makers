require './app.rb'

describe "Testing Infrastructure", type: :feature do

  xit 'displays text on the homepage' do
    visit('/')
    expect(page).to have_content'Testing infrastructure working!'
  end

  it 'gets Player1 and Player2\'s names and displays them'  do
    visit('/')
    @one = "Lucy"
    @two = "Carl"
    fill_in 'Player_1', with: @one
    fill_in 'Player_2', with: @two
    click_on 'Submit'
    expect(page).to have_content 'Player 1: #{@name1} V Player 2: #{@name2}'
  end


end
