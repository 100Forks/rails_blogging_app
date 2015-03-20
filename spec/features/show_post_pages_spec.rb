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
end
