class ArticlemanageController < ApplicationController
  def index
  end

  def new
    @user = current_user
    @company = current_company
    @articlemanage = Articlemanage.new
  end

  def create
    @articlemanage = Articlemanage.new( articlemanage_params )
    @articlemanage.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
    def articlemanage_params
      params.require(:articlemanage).permit(:title,:thumb_text,:thumb_image,:user_id ,:company_id)
    end
end
