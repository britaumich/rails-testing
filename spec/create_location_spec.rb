require 'rails_helper'

RSpec.describe 'Creating a location', type: :system do
  before do
    login_as(FactoryBot.create(:user))
    # create(:state, name: 'Michigan')
    visit new_location_path
  end

  scenario 'valid inputs' do
    fill_in 'Name', with: "Jason's House"
    fill_in 'Line 1', with: '69420 Cool Ave'
    fill_in 'City', with: 'Sand Lake'
    fill_in 'State', with: 'Michigan'
    # select 'Michigan', from: 'State'
    fill_in 'Zip code', with: '49343'
    click_on 'Create Location'

    expect(page).to have_content('Location was successfully created')
  end
end

RSpec.describe 'Creating a location', type: :system do
  before do
    login_as(FactoryBot.create(:user))
    # create(:state, name: 'Michigan')
    visit new_location_path
  end

  scenario 'invalid inputs' do
    click_on 'Create Location'
    sleep(2)
    expect(page).to have_content("Name can't be blank")
  end
end

RSpec.describe 'Updating a location', type: :system do
  before do
    login_as(FactoryBot.create(:user))
    location = FactoryBot.create(:location)
    visit edit_location_path(location)
  end

  scenario 'valid inputs' do
    fill_in 'Name', with: "Jason's Filthy Shack"
    click_on 'Update Location'
    sleep(2)
    expect(page).to have_content('Location was successfully updated')
  end
end
