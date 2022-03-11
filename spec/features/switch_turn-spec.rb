feature 'Switch turn' do
  context 'seeing the current turn' do
    scenario 'at beginning of the battle' do
      sign_in_and_play
      expect(page).to have_content 'Hal\'s turn'
  end

  scenario 'after player1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Hal\'s turn'
    expect(page).to have_content 'Valentina\'s turn'
  end
end
