class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_search

  private

    def set_search
      @search = Recipe.search(params[:q])
      # puts '************'
      # puts search.inspect
      # @search = search.result
      # puts @search.inspect
    end
end
