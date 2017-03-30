class ArticleController < ApplicationController
  def index
  end

  def new
  end

  def up
    @article = Article.find(params[:article_id])
    if @article.content_number > 1
      @before_article = Article.find_by(content_number: @article.content_number - 1)
      @article.content_number = @article.content_number - 1
      @before_article.content_number = @before_article.content_number + 1
      @article.save
      @before_article.save

      redirect_to :back
    end
  end

  def down
    @article = Article.find(params[:article_id])
    @articlemanage = @article.articlemanage
    if @article.content_number < @articlemanage.articles.count
      @after_article = Article.find_by(content_number: @article.content_number + 1)
      @article.content_number = @article.content_number + 1
      @after_article.content_number = @after_article.content_number - 1
      @article.save
      @after_article.save

      redirect_to :back
    end
  end

  def edit
    @user = current_user
    @company = current_company
    @articlemanage = Articlemanage.find(params[:id])
    @article = @articlemanage.articles.order("content_number ASC")
    @new_article = Article.new
  end

  def update
    @article = Article.find(params[:id])
    @articlemanage = @article.articlemanage
    if @article.update(article_params)
        @articlemanage.permit = false
        @articlemanage.save!
      redirect_to :back, notice: "記事の更新が完了しました。"
    else
      redirect_to :back, alert: "記事の更新に失敗しました。"
    end
  end

  def create
    @articlemanage = Articlemanage.find(params[:articlemanage_id])
    @article = Article.new(article_params)
    @article.content_number = @articlemanage.articles.count + 1
    if @article.save
      redirect_to :back, notice: "記事を作成しました。"
    else
      redirect_to :back, alert: "記事の作成に失敗しました。"
    end
  end

  def destroy
  end

  private
    def article_params
      params.require(:article).permit(:content_text,:article_image,:imageposition,:articlemanage_id)
    end
end
