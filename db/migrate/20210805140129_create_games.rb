class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.datetime :date
      t.string :team1
      t.string :team2
      t.string :game_score
    end
  end
end
