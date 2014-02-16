# == Schema Information
#
# Table name: players
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Player < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true

  has_many :shots
  has_many :assists
  has_many :assisted_shots
  has_many :blocks

  def takes_shot
      # points: 2,
     #  made: true,
     #  shot_type: "fg"
    Shot.create!(player_id: id)
  end

  def makes_assist(assisted)
    Assist.create!(player_id: id, assisted_id: assisted.id)
    assisted.takes_shot
  end

  def blocks_shot
    Block.create! player_id: id
  end
end
