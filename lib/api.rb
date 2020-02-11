require 'httparty'
require 'pry'

class Countries::API

    def get_countries
        response = HTTParty.get "https://restcountries-v1.p.rapidapi.com/all",
  headers:{
    "X-RapidAPI-Host" => "restcountries-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "27ad5629c9msh5524cc3174af620p1be0aajsnc596f2fc0949"}
        # binding.pry
    end
end











    
    # def country #iterate through just to get the country name
    # end

    # def regions #iterate through to just get the region name
    # end

    # def display_country_info
    # end




# only requesting api should only be from this class