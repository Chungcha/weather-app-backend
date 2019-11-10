class MetaWeatherController < ApplicationController

    def test
        response = RestClient.get("https://www.metaweather.com/api/location/search/?query=London")
        jsonResponse = JSON.parse(response.body)
        render json: jsonResponse
    end 

    def search
        city = params["search"]
        response = RestClient.get("https://www.metaweather.com/api/location/search/?query=#{city}")
      
        render json: response
    end

    def location 
        location_id = params["location_id"]
        response = RestClient.get("https://www.metaweather.com/api/location/#{location_id}/")

        render json: response 
    end 

    def geolocation
        location = params["coordinates"]
        response = RestClient.get("https://www.metaweather.com/api/location/search/?lattlong=#{location}")
        jsonResponse = JSON.parse(response.body)
        locationId = jsonResponse.first["woeid"]

        response = RestClient.get("https://www.metaweather.com/api/location/#{locationId}/")

        render json: response 
    end

end
