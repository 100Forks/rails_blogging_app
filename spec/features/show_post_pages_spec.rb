require 'rails_helper'

describe 'the show post process' do
  it 'shows a list of blog post titles' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    expect(page).to have_content("Hello World")
  end

  it 'shows an individual post' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    click_on "Hello World"
    expect(page).to have_content("My first entry")
  end

  it 'shows an individual post' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    click_on "Hello World"
    click_on "Return to blog list"
    expect(page).to have_content("Hello World")
  end

  it 'adds a new post' do
    visit posts_path
    click_on "Add a new post"
    fill_in "Title", :with => "Hello World"
    fill_in "Entry", :with => "My first entry"
    click_on "Create Post"
    expect(page).to have_content('Hello World')
  end

  it 'shows errors when title and entry is not filled in' do
    visit posts_path
    click_on "Add a new post"
    click_on "Create Post"
    expect(page).to have_content('errors')
  end

  it 'shows errors when title is not filled in' do
    visit posts_path
    click_on "Add a new post"
    fill_in "Entry", :with => "My first entry"
    click_on "Create Post"
    expect(page).to have_content("Title can't be blank")
  end

  it 'shows errors when entry is not filled in' do
    visit posts_path
    click_on "Add a new post"
    fill_in "Title", :with => "Hello World"
    click_on "Create Post"
    expect(page).to have_content("Entry can't be blank")
  end
end
