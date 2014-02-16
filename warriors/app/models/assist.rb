# == Schema Information
#
# Table name: assists
#
#  id          :integer          not null, primary key
#  player_id   :integer          not null
#  assisted_id :integer          not null
#

class Assist < ActiveRecord::Base
  belongs_to :player

  belongs_to(:assisted,
  primary_key: :id,
  foreign_key: :assisted_id,
  class_name: "Player"
  )
end
