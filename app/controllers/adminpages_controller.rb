class AdminpagesController < ApplicationController
  before_action :authenticate_admin!

  def userslist
    permit_check!
    @user = User.all
  end

  def userspermit
    permit_check!
    @user = User.find_by(id: params[:params_id])

    @user.toggle(:permit)
    @user.save!
    redirect_to userslist_adminpage_url
  end

  def companieslist
    permit_check!
    @company = Company.all
  end

  def companiespermit
    permit_check!
    @company = Company.find_by(id: params[:params_id])

    @company.toggle(:permit)
    @company.save!
    redirect_to companieslist_adminpage_url
  end


  def show
    permit_check!
  end

  private
    def permit_check!
      if current_admin.permit == false
        redirect_to(root_path,:alert => "管理ユーザーとして承認されていません")
      end
    end
end

