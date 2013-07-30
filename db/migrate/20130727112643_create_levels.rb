class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.belongs_to :skill
      t.belongs_to :user
      t.integer    :proficiency, default: 0

      t.timestamps
    end
  end
end
