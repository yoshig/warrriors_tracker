class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.integer :player_id, null: false
    end
  end
end
