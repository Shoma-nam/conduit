class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
  
    def index
      @articles = Article.all
    end
  
    def show
      # set_article で @article が設定されます
    end
  
    def new
      @article = Article.new
    end
  
    def edit
      # set_article で @article が設定されます
    end
  
    def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to articles_path, notice: '記事が作成されました。'
      else
        render :new
      end
    end
  
    def update
      if @article.update(article_params)
        redirect_to articles_path, notice: '記事が更新されました。'
      else
        render :edit
      end
    end
  
    def destroy
      @article.destroy
      redirect_to articles_url, notice: '記事が削除されました。'
    end
  
    private
  
    def set_article
      @article = Article.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to articles_path, alert: '記事が見つかりませんでした。'
    end
  
    def article_params
      # 必要に応じてパラメータを調整してください
      params.require(:article).permit(:title, :body)
    end
  end
  