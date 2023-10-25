require 'rails_helper'

RSpec.describe 'create user', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit root_path
      click_on "Sign in"
      click_on "Sign up"
      fill_in 'Email', with: "testuser@test.com"
      fill_in 'Password', with: "secretsecret"
      fill_in 'Password confirmation', with: "secretsecret"
      sleep(2)
      click_on "Sign up"
      sleep(inspection_time=2)

      expect(page).to have_content("Welcome! You have signed up successfully.")
    end
  end
end

RSpec.describe 'create user', type: :system do
  describe 'index page' do
    it 'show password mismatch error' do
      visit root_path
      click_on "Sign in"
      click_on "Sign up"
      fill_in 'Email', with: "testuser@test.com"
      fill_in 'Password', with: "secretsecret"
      fill_in 'Password confirmation', with: "secret"
      sleep(2)
      click_on "Sign up"
      sleep(inspection_time=2)

      expect(page).to have_content("Password confirmation doesn't match Password")
    end
  end
end
