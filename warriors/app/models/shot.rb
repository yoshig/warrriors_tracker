# == Schema Information
#
# Table name: shots
#
#  id        :integer          not null, primary key
#  player_id :integer          not null
#

class Shot < ActiveRecord::Base
  belongs_to :player
end
