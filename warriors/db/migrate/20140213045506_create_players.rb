class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :name
    end
  end
end
