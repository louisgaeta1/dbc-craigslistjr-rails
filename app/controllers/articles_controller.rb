class ArticlesController < ApplicationController

  before_action :set_category
  before_action :set_article, only: [:show, :update]

  def show
  end

  def new
    @article = @category.articles.new
  end

  def edit
    @article = Article.find_by(key: params[:id])
  end

  def create
    @article = @category.articles.create(article_params)
    @message = "Edit URL: " +  request.host + ":" + request.port.to_s + edit_category_article_path(@category, @article.key)
    render 'show'
  end

  def update
    @article.update(article_params)
    @message = "Edit URL: " +  request.host + ":" + request.port.to_s + edit_category_article_path(@category, @article.key)
    render 'show'
  end

private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_article
    @article = @category.articles.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :email, :price)
  end

end
