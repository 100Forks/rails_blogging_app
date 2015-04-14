require 'rails_helper'

describe 'edit a comment process' do

  it 'edits a comment entry' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    comment = post.comments.create(:entry => 'something')
    visit post_path(post)
    click_on "Edit"
    fill_in 'Entry', :with => 'Something new'
    click_on 'Update Comment'
    expect(page).to have_content('Something new')
  end

  it 'shows errors when entry is empty' do
    post = Post.create(:title => "Hello World", :entry => "My first entry")
    comment = post.comments.create(:entry => 'something')
    visit post_path(post)
    click_on "Edit"
    fill_in 'Entry', :with => ''
    click_on 'Update Comment'
    expect(page).to have_content('errors')
  end
end
