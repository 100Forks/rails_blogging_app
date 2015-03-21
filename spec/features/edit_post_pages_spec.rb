require 'rails_helper'

describe 'the edit a post process' do
  it 'edits a blog post title' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    click_on "Hello World"
    click_on "Edit this blog post"
    fill_in "Title", :with => "Bye-Bye World"
    click_on "Update Post"
    expect(page).to have_content('Bye-Bye World')
  end

  it 'edits a blog post entry' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    click_on "Hello World"
    click_on "Edit this blog post"
    fill_in "Title", :with => "Hello World"
    fill_in "Entry", :with => "Different fun stuff"
    click_on "Update Post"
    expect(page).to have_content('Different fun stuff')
  end

  it 'shows errors when title and entry is empty' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    click_on "Hello World"
    click_on "Edit this blog post"
    fill_in "Title", :with => ""
    fill_in "Entry", :with => ""
    click_on "Update Post"
    expect(page).to have_content('errors')
  end

  it 'shows errors when title is empty' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    click_on "Hello World"
    click_on "Edit this blog post"
    fill_in "Title", :with => ""
    click_on "Update Post"
    expect(page).to have_content("Title can't be blank")
  end

  it 'shows errors when entry is empty' do
    Post.create(:title => "Hello World", :entry => "My first entry")
    visit posts_path
    click_on "Hello World"
    click_on "Edit this blog post"
    fill_in "Entry", :with => ""
    click_on "Update Post"
    expect(page).to have_content("Entry can't be blank")
  end
end
