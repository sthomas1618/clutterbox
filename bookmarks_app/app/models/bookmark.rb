# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  url        :string(255)
#  notes      :string(255)
#  rating     :integer
#  private    :boolean
#  view_count :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#

class Bookmark < ActiveRecord::Base
  attr_accessible :user_id, :url, :title, :notes, :rating, :private
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

  validates :user_id, presence: true
  validates :url,  presence: true
  validates :title, presence: true
  validates :rating, presence: true

  def domain
    URI.parse(url).host.gsub(/\Awww\./, "") 
  end
end