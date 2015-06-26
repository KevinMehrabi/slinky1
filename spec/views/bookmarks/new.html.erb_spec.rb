require 'rails_helper'

RSpec.describe "bookmarks/new", type: :view do
  before(:each) do
    assign(:bookmark, Bookmark.new(
      :user_id => 1,
      :mark_id => 1
    ))
  end

  it "renders new bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmarks_path, "post" do

      assert_select "input#bookmark_user_id[name=?]", "bookmark[user_id]"

      assert_select "input#bookmark_mark_id[name=?]", "bookmark[mark_id]"
    end
  end
end
