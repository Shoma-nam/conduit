class ArticlesController < ApplicationController
   
  
    def index
      @articles = Article.all
    end

    def edit
    end
  
    def show
    end
  
    def new
      @article = Article.new
    end
  
    def create
    # @article = current_user.articles.new(article_params)
      @article = Article.new(article_params)
      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render :new
      end
    end
  
    
  
    def update
      if @article.update(article_params)
        redirect_to @article, notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @article.destroy
      redirect_to articles_url, notice: 'Article was successfully destroyed.'
    end
  
    private
    #   def set_article
    #     @article = Article.find(params[:id])
    #   end
  
    private
    def article_params
      params.require(:article).permit(:title, :subtitle, :content, :tags)
    end
end