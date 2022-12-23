class Favorite < ApplicationRecord
  
  belongs_to :user #Comment.customerでコメントの所有者を取得
  belongs_to :book #Comment.articleでそのコメントがされた投稿を取得
  
  validates_uniqueness_of :book_id, scope: :user_id
  
end
