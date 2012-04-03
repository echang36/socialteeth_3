class Contribution < ActiveRecord::Base
  has_one :user
  belongs_to :ad
end
