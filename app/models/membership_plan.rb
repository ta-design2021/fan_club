# class MembershipPlan < ApplicationRecord
# end
class MembershipPlan < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '月額プラン ¥600（税込）/1ヶ月半' },
    { id: 3, name: '年額プラン ¥6,600（税込）/1年' }
  ]

    include ActiveHash::Associations
    has_one :user

end
