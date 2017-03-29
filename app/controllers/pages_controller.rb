class PagesController < ApplicationController
  def index
    @company = current_company
    @user = current_user
  end
end
