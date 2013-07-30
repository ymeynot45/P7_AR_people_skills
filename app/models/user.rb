class User < ActiveRecord::Base
  has_many :skills, through: :levels
  has_many :levels

  def proficiency_for(skill)
    join = Level.find_by_user_id_and_skill_id(self, skill)
    join.proficiency
  end

  def set_proficiency_for(skill, value)
    join = Level.find_by_user_id_and_skill_id(self, skill)
    join.proficiency = value
    join.save
  end

end