class Favorite < ApplicationRecord
  
  def delete_record
    favorite_id = Favorite.find_by(user_id: user_id, topic_id: topic_id)
    true if Favorite.find_by(id: favorite_id).delete
  end
  
  belongs_to :user
  belongs_to :topic
end
