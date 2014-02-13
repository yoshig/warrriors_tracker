class Player < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true

  has_many :shots

  def takes_shot(options = {})
    defaults = {
      player_id: id,
      points: 2,
      made: true,
      shot_type: "fg"
    }
    Shot.create!(defaults.merge(options))
  end

end