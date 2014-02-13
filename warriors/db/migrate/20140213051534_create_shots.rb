class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.integer :player_id
      t.integer :points
      t.boolean :made
      t.string  :shot_type
    end
  end
end
