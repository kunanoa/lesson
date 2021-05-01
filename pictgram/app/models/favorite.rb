class Favorite < ApplicationRecord
  
  def favorite_count_plus
    self.topic.counts ||= 0
    self.topic.update(counts: self.topic.counts + 1)
  end
  
  def favorite_count_minus
    self.topic.update(counts: self.topic.counts - 1)
  end
  
  def delete_record
    favorite_id = Favorite.find_by(user_id: user_id, topic_id: topic_id)
    true if Favorite.find_by(id: favorite_id).delete
  end
  
  belongs_to :user
  belongs_to :topic
end
