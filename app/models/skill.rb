class Skill < ActiveRecord::Base
  has_many :users, through: :levels
  has_many :levels
  validates :name, uniqueness: true


  def user_with_proficiency(value)
    join = Level.find_by_proficiency_and_skill_id(value, self.id)
    user = User.find(join.user_id)
  end
end
