# frozen_string_literal: true

require 'rails_helper'

feature 'User can manage leprosoria list.', js: true do # rubocop:disable Metrics/BlockLength
  let!(:leprosorium) { create(:leprosorium) }

  scenario 'creates new leprosorium' do
    visit leprosoria_path
    expect(page).to have_selector 'h1', text: 'Leprosoria'
    click_on 'New leprosorium'
    expect(page).to have_selector 'h1', text: 'New leprosorium'
    fill_in 'Title', with: 'My first leprosorium'
    click_on 'Create Leprosorium'
    expect(page).to have_selector 'h1', text: 'Leprosoria'
    expect(page).to have_content 'My first leprosorium'
  end

  scenario 'shows new leprosorium' do
    visit leprosoria_path
    click_link(leprosorium.title)
    expect(page).to have_selector 'h1', text: leprosorium.title
  end

  scenario 'updates leprosorium' do
    visit leprosoria_path
    expect(page).to have_selector 'h1', text: 'Leprosoria'

    click_on 'Edit', match: :first
    expect(page).to have_selector 'h1', text: 'Edit leprosorium'

    fill_in 'Title', with: 'Updated leprosorium'
    click_on 'Update Leprosorium'

    expect(page).to have_selector 'h1', text: 'Leprosoria'
    expect(page).to have_content 'Updated leprosorium'
  end

  scenario 'destroys leprosorium' do
    visit leprosoria_path
    expect(page).to have_content leprosorium.title

    click_on 'Delete', match: :first
    expect(page).not_to have_content leprosorium.title
  end
end
