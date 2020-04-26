class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
################################################################
  def create
    @article = Article.new(article_params)
    if @article.save()
    redirect_to @article
    else 
      render 'new'
    end
  end
  # we've extracted the allowance of the mass assignment of title and text just to call them in update method as well
 ##################################################################################
  def show
    @article = Article.find(params[:id])
  end
  #################################################################################
  def index
    @articles = Article.all
  end

 
 
 
 
 
 
 
 #####################################################################################
 private
  def article_params
    params.require(:article).permit(:title, :text)
  end


end
