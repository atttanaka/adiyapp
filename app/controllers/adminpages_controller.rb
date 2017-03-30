class AdminpagesController < ApplicationController
  before_action :authenticate_admin!
  before_action :permit_check!

  def userslist
    @user = User.all
  end

  def userspermit
    @user = User.find_by(id: params[:params_id])

    @user.toggle(:permit)
    if @user.save
      if @user.permit == true
        redirect_to userslist_adminpage_url, notice: @user.name + "に権限を付与しました。"
      else
        redirect_to userslist_adminpage_url, notice: @user.name + "の権限を剥奪しました。"
      end
    else
      redirect_to userslist_adminpage_url, alert: "権限の変更に失敗しました。"
    end
  end

  def user_articlemanage_list
    @user = User.find_by(id: params[:params_id])
    @articlemanage = @user.articlemanages

    @pending_articlemanage = @articlemanage.select do |x|
      x.permit == false
    end

    @approved_articlemanage = @articlemanage.select do |x|
      x.permit == true
    end
  end

  def user_articlemanage_permit
    @articlemanage = Articlemanage.find_by(id: params[:params_id])

    @articlemanage.toggle(:permit)
    @articlemanage.save!
    redirect_to :back
  end

  def companieslist
    @company = Company.all
  end

  def companiespermit
    @company = Company.find_by(id: params[:params_id])

    @company.toggle(:permit)
    @company.save!
    redirect_to companieslist_adminpage_url
  end


  def company_articlemanage_list
    @company = Company.find_by(id: params[:params_id])
    @articlemanage = @company.articlemanages

    @pending_articlemanage = @articlemanage.select do |x|
      x.permit == false
    end

    @approved_articlemanage = @articlemanage.select do |x|
      x.permit == true
    end

  end

  def company_articlemanage_permit
    @articlemanage = Articlemanage.find_by(id: params[:params_id])

    @articlemanage.toggle(:permit)
    @articlemanage.save!
    redirect_to :back
  end

  def edit
  end

  def show
  end

  private
    def permit_check!
      if current_admin.permit == false
        redirect_to(root_path,:alert => "管理ユーザーとして承認されていません")
      end
    end
end

