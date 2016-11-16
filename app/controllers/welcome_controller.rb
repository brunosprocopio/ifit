class WelcomeController < ApplicationController

  def self.create_nearby_restaurants_by_lat_lng(location, sessao_id)

    @connection = ActiveRecord::Base.establish_connection(
        :adapter => "postgresql",
        :host => "localhost",
        :username => "postgres",
        :password => "",
        :database => "development-ifit")

    sql = 'SELECT * FROM (
                SELECT *,
                  ((3956 *
                  2 *
                  ASIN(
                    SQRT(POW(SIN((abs('+location[0].to_s+') - abs(dest.latitude)) *
                           pi()/180 / 2),2) +
                    COS(abs('+location[0].to_s+') * pi()/180 ) *
                    COS(abs(dest.latitude) * pi()/180) *
                    POW(SIN((abs('+location[1].to_s+') - abs(dest.longitude)) *
                          pi()/180 / 2), 2))
                    )
                    ) * 1.609344) as distancia
                    FROM Restaurantes dest) as tabela WHERE distancia < 4.0;'

    @result = ActiveRecord::Base.connection.execute(sql);

    if @result.count > 0
      @result.each do |row|
        puts row
        if row['distancia'].to_f > 0
          #"id"=>"1", "nome"=>"rest1", "cnpj"=>nil, "razao_social"=>nil, "usuario"=>"teste1", "senha"=>"teste1", "latitude"=>"-23.4685109", "longitude"=>"-46.6325186", "cartao_credito"=>"f", "cartao_debito"=>"f", "dinheiro"=>"t"
          RestaurantesProximo.create(:sessao_id => sessao_id, :restaurante_id => row['id'])
        end
      end
    end

    #@r = RestaurantesProximo.new(:id => 1, :longitude => 10, :latitude => 20)
  end

  def self.get_location_from_cep(cep)
    puts "http://maps.google.com/maps/api/geocode/json?address=#{cep}"
    url = URI.parse("http://maps.google.com/maps/api/geocode/json?address=#{cep}")
    consulta = Net::HTTP.get_response(url)
    h = JSON.parse(consulta.body)
    @r = [h["results"][0]["geometry"]["location"]["lat"], h["results"][0]["geometry"]["location"]["lng"]]
  end
end