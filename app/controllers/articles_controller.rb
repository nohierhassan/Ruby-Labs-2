class ArticlesController < ApplicationController
  def new
  end
################################################################
  def create
    @article = Article.new(article_params)
    @article.save()
    redirect_to @article
  end
  # we've extracted the allowance of the mass assignment of title and text just to call them in update method as well
 ##################################################################################
  def show
    @article = Article.find(params[:id])
  end
 
 
 
 
 
 
 
 #####################################################################################
 private
  def article_params
    params.require(:article).permit(:title, :text)
  end


end
