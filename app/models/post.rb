# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :description, :title, :user_id

  validates :title, presence: true, length: { maximum: 140 }
  validates :description, presence: true
  belongs_to :user
  has_many :comments
end
