class MapsController < ApplicationController
  def index
    address = params{'address'}
    city = params['city']
    state = params['state']
    zip = params['zip']
    service_type = params["service"]
    
    

    #0 - format inputs into an address string....+ or URL encoded space TODO
    
    #1. Use goe code to get the lat and long of the search area

    url = "https://maps.googleapis.com/maps/api/geocode/json?address=7435+West+Williams+Glendale+AZ&key=#{key}"

    response = HTTParty.get(url)

    geo = response.parsed_response["results"].first["geometry"]

    lat = geo["location"]["lat"]
    lng = geo["location"]["lng"]
    # lat = 33.6880225,
    # lng = -112.2187718
    lat = 34.00974600000001
    lng =  -118.4659576
    
    # 2. get the list of spots withing 10 Km of this location

    @client = GooglePlaces::Client.new(key)
    resp = @client.spots(lat, lng, :types => 'locksmith', :radius => 10000)
    #sleep(10)
    #have an array of spot objects
    spots = []
    resp.each do |spot|
      spot_hash = {
        :place_id => spot.reference,
        :name => spot.name,
        :phone => spot.formatted_phone_number,
        :rating => spot.rating,
        :ratings => spot.json_result_object["user_ratings_total"]
      }
      spots << spot_hash
    end
    #TODO - save search details to search_history table - including result count.
    render json: {
      :count => spots.count,
      :spots => spots
  }
    # render json: {
    #       :message  => "Account created successfully",
    #       :login_id => @login_id
    #     }, status: 200

  end
end
