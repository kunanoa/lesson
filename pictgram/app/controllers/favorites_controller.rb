class FavoritesController < ApplicationController
  
  before_action :require_login, only: [:create, :delete]
    
  def index
    @favorite_topics = current_user.favorite_topics
  end
  
  def create_favorite_instance
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.topic_id = params[:topic_id]
  end
  
  def create
    create_favorite_instance
    @favorite.favorite_count_plus
    
    if @favorite.save
      redirect_to topics_path, success: 'お気に入りに登録しました'
    else
      redirect_to topics_path, danger: 'お気に入りの登録に失敗しました'
    end
  end
  
  def delete
    create_favorite_instance
    @favorite.favorite_count_minus
    
    if @favorite.delete_record
      redirect_to request.referer, success: 'お気に入りを削除しました'
    else
      redirect_to request.referer, danger: 'お気に入りの削除に失敗しました'
    end
  end
end