class PagesController < ApplicationController
  def index
    @company = current_company
    @user = current_user
    @articlemanage = Articlemanage.all
    @permit_articlemanage = @articlemanage.select do |x|
      x.permit == true
    end
  end
end
