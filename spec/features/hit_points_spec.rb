feature 'View player hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in 'player1', with: 'Hal'
    fill_in 'player2', with: 'Valentina'
    click_button 'Submit'
    expect(page).to have_content('Player 2: Valentina, Hit points: 20')
  end
end
