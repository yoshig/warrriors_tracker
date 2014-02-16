class CreateAssist < ActiveRecord::Migration
  def change
    create_table :assists do |t|
      t.integer :player_id, null: false
      t.integer :assisted_id, null: false
    end
  end
end
