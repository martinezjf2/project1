require 'httparty'
require 'pry'

class Countries::API

    def get_countries
        response = HTTParty.get "https://restcountries-v1.p.rapidapi.com/all",
  headers:{
    "X-RapidAPI-Host" => "restcountries-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "27ad5629c9msh5524cc3174af620p1be0aajsnc596f2fc0949"}

    end
end
