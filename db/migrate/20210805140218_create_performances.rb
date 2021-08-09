class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.integer :player_score
      t.belongs_to :game, foreign_key:true
      t.belongs_to :player, foreign_key:true
    end
  end
end
