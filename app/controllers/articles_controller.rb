class ArticlesController < ApplicationController

    # after_action :testApp

    def show
        @article = Article.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end
    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = "Article was created succesfully!"
            redirect_to @article
        else
           render 'new'
        end 
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice]= "Article was updated succesfully!"
            redirect_to @article
        else
            render 'edit'
        end
    
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
        
    end

    # private
    # def testApp
    #     puts "I am testApp callback2"
    # end
end