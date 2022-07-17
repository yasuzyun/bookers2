class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :title, presence: true, length: {maximum: 200}
  validates :body, presence: true, length: { maximum: 200 }
  
   #shop_nameが存在しているかを確認するバリデーション
   #imageが存在しているかを確認するバリデーション
end
