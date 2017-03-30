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
    if user_signed_in?
      @user = current_user
      @articlemanage = @user.articlemanages
    elsif company_signed_in?
      @company = current_company
      @articlemanage = @company.articlemanages
    else
      redirect_to root_path
    end
  end

  def edit
    @company = current_company
    @user = current_user
    @articlemanage = Articlemanage.find(params[:id])
  end

  def update
    @articlemanage = Articlemanage.find(params[:id])
    if @articlemanage.update(articlemanage_params)
        @articlemanage.permit = false
        @articlemanage.save!
      redirect_to :back, notice: "更新の更新が完了しました。"
    end
  end

  def destroy
  end

  private
    def articlemanage_params
      params.require(:articlemanage).permit(:title,:thumb_text,:thumb_image,:user_id ,:company_id)
    end
end
