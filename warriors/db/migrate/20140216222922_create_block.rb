class CreateBlock < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :player_id
    end
  end
end
