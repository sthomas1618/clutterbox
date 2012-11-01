# == Schema Information
#
# Table name: taggings
#
#  id          :integer          not null, primary key
#  bookmark_id :integer
#  tag_id      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tagging < ActiveRecord::Base
  attr_accessible :bookmark_id, :tag_id
  belongs_to :bookmark
  belongs_to :tag

  validates :bookmark_id, presence: true
  validates :tag_id,  presence: true
end
