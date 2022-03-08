feature 'Testing form' do
  scenario 'players can add their names' do
    visit('/')
    fill_in 'player1', with: 'Henry'
    fill_in 'player2', with: 'Valentina'
    click_button 'Submit'

    save_and_open_page
    
    expect(page).to have_text('Henry vs. Valentina')
  end
end