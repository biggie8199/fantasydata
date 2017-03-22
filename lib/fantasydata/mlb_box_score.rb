require 'fantasydata/base'

module Fantasydata
  class MLBBoxScore < Fantasydata::Base

    def player_stats
      @player_stats ||= map_collection(Fantasydata::MLBBoxscore::PlayerGameStat, :player_games)
    end

  end
end
