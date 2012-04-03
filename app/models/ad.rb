class Ad < ActiveRecord::Base
  belongs_to :user
  has_many :contributions
end
