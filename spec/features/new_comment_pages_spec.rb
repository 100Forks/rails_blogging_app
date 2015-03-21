require 'rails_helper'

describe 'the add a comment process' do
  it 'adds a new comment' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    visit new_post_comment_path(post)
    fill_in "Author", :with => 'dmmoody'
    fill_in "Entry", :with => 'something'
    click_on "Create Comment"
    expect(page).to have_content("dmmoody")
  end

  it 'shows error when author and entry is not filled in' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    visit new_post_comment_path(post)
    fill_in "Author", :with => ''
    fill_in "Entry", :with => ''
    click_on "Create Comment"
    expect(page).to have_content("error")
  end

  it 'shows error when author is not filled in' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    visit new_post_comment_path(post)
    fill_in "Author", :with => ''
    fill_in "Entry", :with => 'something'
    click_on "Create Comment"
    expect(page).to have_content("Author can't be blank")
  end

  it 'shows error when author and entry is not filled in' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    visit new_post_comment_path(post)
    fill_in "Author", :with => 'dmmoody'
    fill_in "Entry", :with => ''
    click_on "Create Comment"
    expect(page).to have_content("Entry can't be blank")
  end
end
