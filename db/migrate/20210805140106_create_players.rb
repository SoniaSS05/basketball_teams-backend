class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :bio
      t.integer :age
      t.integer :number
      t.belongs_to :team, foreign_key:true
      t.belongs_to :position, foreign_key:true
    end
  end
end
