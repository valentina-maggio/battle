def sign_in_and_play
    visit('/')
    fill_in :player1, with: 'Hal'
    fill_in :player2, with: 'Valentina'
    click_button 'Submit'
end