class AdminpagesController < ApplicationController
  before_action :authenticate_admin!

  def userslist
    permit_check!
    @user = User.all
  end

  def companieslist
    permit_check!
    @company = Company.all
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

