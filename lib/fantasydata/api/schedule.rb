require 'fantasydata/api/utils'

module Fantasydata
  module API
    module Schedule
      include Fantasydata::API::Utils

      def schedule_by_year sport=:nfl, year
        if sport == 'mlb'
          objects_from_response(Fantasydata::Schedule, :get, "/#{sport}/v2/JSON/Games/#{year}")
        else
          objects_from_response(Fantasydata::Schedule, :get, "/#{sport}/v2/JSON/Schedules/#{year}")
        end
      end

    end
  end
end
