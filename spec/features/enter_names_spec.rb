feature 'Enter names' do
  scenario 'submitting names' do
    enter_name_and_play
    expect(page).to have_content 'Dave'
  end
end