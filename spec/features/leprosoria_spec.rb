# frozen_string_literal: true

require 'rails_helper'

feature 'User can manage leprosoria list.', js: true do # rubocop:disable Metrics/BlockLength
  let!(:leprosorium) { create(:leprosorium) }

  scenario 'showing a leprosorium' do
    visit leprosoria_path
    click_link(leprosorium.title)

    expect(page).to have_selector 'h1', text: leprosorium.title
  end

  scenario 'creating a new leprosorium' do
    visit leprosoria_path
    expect(page).to have_selector 'h1', text: 'Leprosoria'

    click_on 'New leprosorium'
    fill_in 'Title', with: 'My first leprosorium'

    expect(page).to have_selector 'h1', text: 'Leprosoria'
    click_on 'Create leprosorium'

    expect(page).to have_selector 'h1', text: 'Leprosoria'
    expect(page).to have_content 'My first leprosorium'
  end

  scenario 'updating a leprosorium' do
    visit leprosoria_path
    expect(page).to have_selector 'h1', text: 'Leprosoria'

    click_on 'Edit', match: :first
    fill_in 'Title', with: 'Updated leprosorium'

    expect(page).to have_selector 'h1', text: 'Leprosoria'
    click_on 'Update leprosorium'

    expect(page).to have_selector 'h1', text: 'Leprosoria'
    expect(page).to have_content 'Updated leprosorium'
  end

  scenario 'destroying leprosorium' do
    visit leprosoria_path
    expect(page).to have_content leprosorium.title

    click_on 'Delete', match: :first
    expect(page).not_to have_content leprosorium.title
  end
end
