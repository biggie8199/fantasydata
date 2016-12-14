require 'fantasydata/base'

module Fantasydata
  class DailyFantasyPoints < Fantasydata::Base
    attr_reader :player_id, :name, :team, :position, :fantasy_points, :fantasy_points_ppr,
                :fantasy_points_fan_duel, :fantasy_points_draft_kings, :fantasy_points_yahoo,
                :has_started, :is_in_progress, :is_over, :date
  end
end
