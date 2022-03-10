feature 'Attack move' do
  scenario 'player 1 can attack and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Hal attacks Valentina'
  end
end