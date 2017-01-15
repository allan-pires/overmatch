class PagesController < ApplicationController
	def show
		render template: "pages/#{params[:page]}"
	end

	def search
		render template: "player/#{params[:page]}"
	end
end
