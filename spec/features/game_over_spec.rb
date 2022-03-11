feature 'Game over' do
  scenario 'Game over when one player reaches 0 HP' do
    sign_in_and_play
    click_button 'Attack'
    visit('/game_over')
    expect(page).to have_content 'GAME OVER'
  end
end