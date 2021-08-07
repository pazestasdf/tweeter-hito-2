class HomeController < ApplicationController
  def index
  #   #TODO refactor this to use less conditions
  #   if( params[:search] && !params[:search].empty? )
  #     if signed_in?
  #       @tweets = Tweet.tweets_for_me(current_user).where("content LIKE ?", "%#{params[:search]}%").order(created_at: :desc).page params[:page]
  #     else
  #       @tweets = Tweet.where("content LIKE ?", "%#{params[:search]}%").order(created_at: :desc).page params[:page]
  #     end
  #   else
  #     if signed_in?
  #       @tweets = Tweet.tweets_for_me(current_user).order(created_at: :desc).page params[:page]
  #     else
  #       @tweets = Tweet.order(created_at: :desc).page params[:page]
  #     end
  #   end

  #   @tweet = Tweet.new
  # end
    if signed_in?
      @tweets = Tweet.tweets_for_me(current_user).where("content LIKE ?", "%#{params[:search]}%").order(created_at: :desc).page params[:page]
    else
      @tweets = Tweet.where("content LIKE ?", "%#{params[:search]}%").order(created_at: :desc).page params[:page]
    end
    @tweet = Tweet.new
  end

  def all_tweets
    @tweets = Tweet.order(created_at: :desc).page params[:page]
    @tweet = Tweet.new

    render "index"
  end
end
