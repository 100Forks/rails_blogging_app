require 'rails_helper'

describe 'the edit post process' do
  it 'adds a new post' do
    visit posts_path
    click_on "New Post"
    fill_in "Title", :with => "Hello World"
    fill_in "Entry", :with => "My first entry"
    click_on "Create Post"
    expect(page).to have_content('Hello World')
  end

  it 'shows errors when title and entry is not filled in' do
    visit posts_path
    click_on "New Post"
    click_on "Create Post"
    expect(page).to have_content('errors')
  end

  it 'shows errors when title is not filled in' do
    visit posts_path
    click_on "New Post"
    fill_in "Entry", :with => "My first entry"
    click_on "Create Post"
    expect(page).to have_content("Title can't be blank")
  end

  it 'shows errors when entry is not filled in' do
    visit posts_path
    click_on "New Post"
    fill_in "Title", :with => "Hello World"
    click_on "Create Post"
    expect(page).to have_content("Entry can't be blank")
  end
end
