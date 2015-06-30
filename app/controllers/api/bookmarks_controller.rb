module API
	class BookmarksController < ApplicationController
	protect_from_forgery with: :null_session
	
		def index
			render json: Bookmark.all
		end

		def show
			render json: Bookmark.find(params[:id])
		end
	end
end