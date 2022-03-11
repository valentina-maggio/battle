feature 'Attack move' do
  scenario 'player 1 can attack and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Hal attacked Valentina'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Player 2: Valentina - HP: 60'
    expect(page).to have_content 'Player 2: Valentina - HP: 50'
  end
end

