class CompanypagesController < ApplicationController
  before_action :authenticate_company!

  def show
    permit_check!
  end

  private
    def permit_check!
      if current_company.permit == false
        redirect_to(root_path,:alert => "企業アカウント承認を受けてください")
      end
    end
end

