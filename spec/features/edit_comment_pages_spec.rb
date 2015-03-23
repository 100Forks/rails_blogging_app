require 'rails_helper'

describe 'edit a comment process' do
  it 'edits a comment author' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    comment = post.comments.create(:author => 'dmmoody', :entry => 'something')
    visit post_path(post)
    click_on "Edit"
    fill_in 'Author', :with => 'duane'
    click_on 'Update Comment'
    expect(page).to have_content("duane")
  end

  it 'edits a comment entry' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    comment = post.comments.create(:author => 'dmmoody', :entry => 'something')
    visit post_path(post)
    click_on "Edit"
    fill_in 'Entry', :with => 'Something new'
    click_on 'Update Comment'
    expect(page).to have_content('Something new')
  end

  it 'shows errors when author and entry are empty' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    comment = post.comments.create(:author => 'dmmoody', :entry => 'something')
    visit post_path(post)
    click_on "Edit"
    fill_in 'Author', :with => ''
    fill_in 'Entry', :with => ''
    click_on 'Update Comment'
    expect(page).to have_content('errors')
  end

  it 'shows errors when author is empty' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    comment = post.comments.create(:author => 'dmmoody', :entry => 'something')
    visit post_path(post)
    click_on "Edit"
    fill_in 'Author', :with => ''
    click_on 'Update Comment'
    expect(page).to have_content('errors')
  end

  it 'shows errors when entry is empty' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    comment = post.comments.create(:author => 'dmmoody', :entry => 'something')
    visit post_path(post)
    click_on "Edit"
    fill_in 'Entry', :with => ''
    click_on 'Update Comment'
    expect(page).to have_content('errors')
  end
end
