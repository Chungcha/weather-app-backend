class MetaWeatherController < ApplicationController
    def test
        response = RestClient.get("https://www.metaweather.com/api/location/search/?query=London")
        jsonResponse = JSON.parse(response.body)
        render json: jsonResponse
    end 
end
