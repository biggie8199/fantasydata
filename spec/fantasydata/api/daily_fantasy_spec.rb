require 'helper'

describe Fantasydata::API::DailyFantasy do

  before do
    @client = new_test_client
  end

  describe '#bye_weeks_season' do
    before do
      stub_get("/nfl/v2/JSON/DailyFantasyPlayers/2014-SEP-21").
      to_return(:body => fixture("daily_fantasy/daily_players.json"),
                 :headers => {:content_type => "application/json; charset=utf-8"})
    end

    it "requests correct resource - pass string" do
      bye_weeks = @client.daily_fantasy_for_day('2014-SEP-21')
      expect(a_get("/nfl/v2/JSON/DailyFantasyPlayers/2014-SEP-21")).to have_been_made
    end

    it "requests correct resource - pass date" do
      bye_weeks = @client.daily_fantasy_for_day(DateTime.parse("2014/09/21"))
      expect(a_get("/nfl/v2/JSON/DailyFantasyPlayers/2014-SEP-21")).to have_been_made
    end

    it "returns players" do
      players = @client.daily_fantasy_for_day('2014-SEP-21')

      expect(players).to be_an Array
      expect(players.first.player_id).to eq 7328
      expect(players.first.date).to eq '2014-09-21T16:25:00'
      expect(players.first.short_name).to eq 'P.Manning'
      expect(players.first.name).to eq 'Peyton Manning'
      expect(players.first.team).to eq 'DEN'
      expect(players.first.opponent).to eq 'SEA'
      expect(players.first.position).to eq 'QB'
      expect(players.first.salary).to eq 9900
      expect(players.first.last_game_fantasy_points).to eq 10.44
      expect(players.first.projected_fantasy_points).to eq 17.32
      expect(players.first.opponent_rank).to eq 11
      expect(players.first.opponent_position_rank).to eq 16
      expect(players.first.status).to eq 'Healthy'
      expect(players.first.status_code).to eq 'ACT'
      expect(players.first.status_color).to eq 'green'
    end

  end

end
