#DONE (just need to submit)

class Level < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
end
