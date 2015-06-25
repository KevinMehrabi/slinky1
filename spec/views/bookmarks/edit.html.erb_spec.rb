require 'rails_helper'

RSpec.describe "bookmarks/edit", type: :view do
  before(:each) do
    @bookmark = assign(:bookmark, Bookmark.create!(
      :user_id => 1,
      :bookmark_id => 1,
      :create => "MyString",
      :destroy => "MyString"
    ))
  end

  it "renders the edit bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmark_path(@bookmark), "post" do

      assert_select "input#bookmark_user_id[name=?]", "bookmark[user_id]"

      assert_select "input#bookmark_bookmark_id[name=?]", "bookmark[bookmark_id]"

      assert_select "input#bookmark_create[name=?]", "bookmark[create]"

      assert_select "input#bookmark_destroy[name=?]", "bookmark[destroy]"
    end
  end
end
