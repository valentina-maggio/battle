feature 'View player hit points' do
  scenario 'See Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('HP: 60')
  end
end
