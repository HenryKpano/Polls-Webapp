class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :picpoll
  belongs_to :textpoll
end
