require 'fantasydata/base'

module Fantasydata
  module MLBBoxscore
    class PlayerGameStat < Fantasydata::Base
      attr_reader :stat_id, :team_id, :player_id, :season_type, :season, 
      :name, :team, :position, :position_category, :started, :batting_order, 
      :fan_duel_salary, :draft_kings_salary, :fantasy_data_salary, :yahoo_salary, 
      :injury_status, :injury_body_part, :injury_start_date, :injury_notes, 
      :fan_duel_position, :draft_kings_position, :yahoo_position, :opponent_rank, 
      :opponent_position_rank, :global_team_id, :fantasy_draft_salary, :fantasy_draft_position, 
      :game_id, :opponent_id, :opponent, :day, :date_time, :home_or_away, :is_game_over, 
      :global_game_id, :global_opponent_id, :updated, :games, :fantasy_points, :at_bats, :runs, 
      :hits, :singles, :doubles, :triples, :home_runs, :runs_batted_in, :batting_average, :outs, 
      :strikeouts, :walks, :hit_by_pitch, :sacrifices, :sacrifice_flies, :ground_into_double_play, 
      :stolen_bases, :caught_stealing, :pitches_seen, :on_base_percentage, :slugging_percentage, 
      :on_base_plus_slugging, :errors, :wins, :losses, :saves, :innings_pitched_decimal, 
      :total_outs_pitched, :innings_pitched_full, :innings_pitched_outs, :earned_run_average, 
      :pitching_hits, :pitching_runs, :pitching_earned_runs, :pitching_walks, :pitching_strikeouts, 
      :pitching_home_runs, :pitches_thrown, :pitches_thrown_strikes, :walks_hits_per_innings_pitched, 
      :pitching_batting_average_against, :grand_slams, :fantasy_points_fan_duel, :fantasy_points_draft_kings, 
      :fantasy_points_yahoo, :plate_appearances, :total_bases, :fly_outs, :ground_outs, :line_outs, 
      :pop_outs, :intentional_walks, :reached_on_error, :balls_in_play, :batting_average_on_balls_in_play, 
      :weighted_on_base_percentage, :pitching_singles, :pitching_doubles, :pitching_triples, 
      :pitching_grand_slams, :pitching_hit_by_pitch, :pitching_sacrifices, :pitching_sacrifice_flies, 
      :pitching_ground_into_double_play, :pitching_complete_games, :pitching_shut_outs, :pitching_no_hitters, 
      :pitching_perfect_games, :pitching_plate_appearances, :pitching_total_bases, :pitching_fly_outs, 
      :pitching_ground_outs, :pitching_line_outs, :pitching_pop_outs, :pitching_intentional_walks, 
      :pitching_reached_on_error, :pitching_catchers_interference, :pitching_balls_in_play, 
      :pitching_on_base_percentage, :pitching_slugging_percentage, :pitching_on_base_plus_slugging, 
      :pitching_strikeouts_per_nine_innings, :pitching_walks_per_nine_innings, 
      :pitching_batting_average_on_balls_in_play, :pitching_weighted_on_base_percentage, :double_plays, 
      :pitching_double_plays, :batting_order_confirmed
    end
  end
end
