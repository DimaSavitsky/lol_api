class ApiRequestsController < ApplicationController

  def status
    uri = URI("https://#{LOL_REGION}.api.pvp.net/api/lol/#{LOL_REGION}/v1.3//stats/by-summoner/#{current_user.lol_id}/summary?api_key=#{LOL_API_KEY}")
    @response = Net::HTTP.get(uri)
  end


end
