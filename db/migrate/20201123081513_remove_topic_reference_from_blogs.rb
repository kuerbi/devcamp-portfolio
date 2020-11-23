class RemoveTopicReferenceFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_reference :blogs, :topic, null: false, foreign_key: true
  end
end
