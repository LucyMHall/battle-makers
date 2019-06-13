def sign_in_and_play
  visit('/names')
  fill_in 'Player_1', with: "Lucy"
  fill_in 'Player_2', with: "Carl"
  click_on 'Submit'
end
