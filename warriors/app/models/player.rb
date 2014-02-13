class Player < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true

  def takes_shot(options = {})

  end
end