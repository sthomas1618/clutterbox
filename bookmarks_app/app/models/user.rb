# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  username   :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessor :password_confirmation 
  attr_accessible :first_name, :last_name, :username, :email, :password, :password_confirmation
  has_many :bookmarks

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name,  presence: true, length: { maximum: 50 }
  VALID_USERNAME_REGEX = /\A\w+\Z/
  validates :username, presence: true, format: { with: VALID_USERNAME_REGEX },
                       uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A.+@.+\Z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true
end
