class MetaWeatherController < ApplicationController

    def test
        response = RestClient.get("https://www.metaweather.com/api/location/search/?query=London")
        jsonResponse = JSON.parse(response.body)
        render json: jsonResponse
    end 

    def search
        searchCity = params["search"]
        response = RestClient.get("https://www.metaweather.com/api/location/search/?query=#{searchCity}")
      
        render json: response
    end

    def location 
        location = params["location"]
        response = RestClient.get("https://www.metaweather.com/api/location/#{location}/")

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
