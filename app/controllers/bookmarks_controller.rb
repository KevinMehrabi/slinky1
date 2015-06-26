class BookmarksController < ApplicationController

  # GET /bookmarks
  # GET /bookmarks.json
  def index
    @bookmarks = Bookmark.all
  end

  # GET /bookmarks/1
  # GET /bookmarks/1.json
  def show
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks
  # POST /bookmarks.json
  def create
    @bookmark = current_user.bookmarks.build(:mark_id => params[:bookmark_id])
      if @bookmark.save
        flash[:notice] = "Added bookmark."
        redirect_to users_edit_path
      else
        flash[:error] = "Unable to add bookmark."
        redirect_to users_index_path
      end
  end

  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.json
  def destroy
    @bookmark = current_user.bookmarks.find(params[:id])
    @bookmark.destroy
    flash[:notice] = "Removed bookmark."
    redirect_to bookmarks_path
  end

end
