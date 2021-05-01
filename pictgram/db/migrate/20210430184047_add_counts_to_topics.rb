class AddCountsToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :counts, :integer
  end
end
