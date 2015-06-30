require 'rails_helper'

RSpec.describe "bookmarks/index", type: :view do
  before(:each) do
    assign(:bookmarks, [
      Bookmark.create!(
        :user_id => 1,
        :mark_id => 2
      ),
      Bookmark.create!(
        :user_id => 1,
        :mark_id => 2
      )
    ])
  end

  # it "renders a list of bookmarks" do
  #   render
  #   assert_select "tr>td", :text => 1.to_s, :count => 2
  #   assert_select "tr>td", :text => 2.to_s, :count => 2
  # end
end
