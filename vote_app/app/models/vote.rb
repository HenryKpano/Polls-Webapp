class Vote < ActiveRecord::Base
  belongs_to :poll

   validates_presence_of :vote_count
end
