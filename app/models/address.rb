class Address < ApplicationRecord
  belongs_to :user, inverse_of: :address

  # アクティブハッシュとのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
