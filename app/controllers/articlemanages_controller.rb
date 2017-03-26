class ArticlemanagesController < ApplicationController


  def new
    @articlemanage = Articlemanage.new
  end

  def create
    @articlemanage = Articlemanage.new(upload_params)
    if @articlemanage.save
      render json: { message: "success" }, :status => 200
    else
      #  you need to send an error header, otherwise Dropzone
          #  will not interpret the response as an error:
      render json: { error: @articlemanage.errors.full_messages.join(',')}, :status => 400
    end
  end

  def destroy
    @articlemanage = Articlemanage.find(params[:id])
    if @articlemanage.destroy
      render json: { message: "File deleted from server" }
    else
      render json: { message: @articlemanage.errors.full_messages.join(',') }
    end
  end

  private
    def upload_params
      params.require(:articlemanage).permit(:thumb_image,:title,:user_id,:company_id,:thumb_text)
    end
end
