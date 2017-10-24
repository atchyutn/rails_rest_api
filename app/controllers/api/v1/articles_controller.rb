module Api
  module V1
    class ArticlesController < ApplicationController
      skip_before_action :verify_authenticity_token  
      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'success', message: "Loaded articles", data: articles}, status: :ok
      end

      def show
        article = Article.find(params[:id])
        render json: {status: 'success', message: 'Article is shown', data: article}, status: :ok
      end

      def create
        article  = Article.new(article_params)
        if article.save
          render json: {status: 'success', message: 'article created successfully', data: article}, status: :ok
        else
          render json: {stauts: 'ERROR', message: 'Sorry article not created', data: article.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        article = Article.find(params[:id])
        article.destroy
        render json: {stauts: "SUCCESS", message: "Deleted artcile successfully", data: article}, status: :ok
      end

      def update
        article = Article.find(params[:id])
        if article.update_attributes(article_params)
          render json: {status: "SUCCESS", message: "Article updated successfully", data: article}, status: :ok
        else
          render json: {status: "ERROR", message: "Article failed to get update", data: artcile.errors}, status: :ok
        end
      end

      private

      def article_params
        params.permit(:title, :body)
      end
    end
  end
end