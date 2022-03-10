feature 'Testing form' do
  scenario 'players can add their names' do
    sign_in_and_play
    expect(page).to have_text('Hal vs. Valentina')
  end
end