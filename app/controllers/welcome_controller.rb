class WelcomeController < ApplicationController

  def self.restaurant_distance_from_client_inkm(cep)
    @r = RestaurantesProximo.new(:id => 1, :longitude => 10, :latitude => 20)
  end

  def self.get_location_from_cep(cep)
    puts "http://maps.google.com/maps/api/geocode/json?address=#{cep}"
    url = URI.parse("http://maps.google.com/maps/api/geocode/json?address=#{cep}")
    consulta = Net::HTTP.get_response(url)
    h = JSON.parse(consulta.body)
    @r = [h["results"][0]["geometry"]["location"]["lat"], h["results"][0]["geometry"]["location"]["lng"]]
  end
end