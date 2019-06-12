require './app.rb'

describe "Testing Infrastructure", type: :feature do
  it 'displays text on the homepage' do
    visit('/')
    expect(page).to have_content'Testing infrastructure working!'
  end

end
