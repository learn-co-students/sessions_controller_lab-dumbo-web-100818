require 'rails_helper'

describe 'sessions', type: 'feature' do

  before do
    visit login_path
    fill_in 'name', with: 'Said'
    click_button 'login'
  end

  it 'allows user to log in' do
    expect(page.body).to include 'Hi, Said.'
  end

  it 'allows user to log out' do
    click_link 'logout'
    expect(page.body).to include 'Hi, .'
  end

end
