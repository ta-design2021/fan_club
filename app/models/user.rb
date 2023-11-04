class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # addressesテーブルとのアソシエーション
  has_one :address, inverse_of: :user

  # membership_plansテーブルとのアソシエーション
  belongs_to :membership_plan

  # accepts nested attributes
  accepts_nested_attributes_for :address
end
