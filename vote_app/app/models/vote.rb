class Vote < ActiveRecord::Base
  belongs_to :poll
  has_one :poll
end
