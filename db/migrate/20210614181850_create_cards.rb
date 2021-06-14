class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :player_name
      t.string :player_team
      t.string :league
      t.string :position
      t.string :card_value
      t.string :card_img
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
