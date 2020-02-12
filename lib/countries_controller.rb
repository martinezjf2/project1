

class Countries::CountriesController

    def run
        self.create_country
        puts "
        ________________Welcome to the Countries CLI APP!__________________"
        self.get_country
        self.end_program
        # invalid_input
        
    end

    def create_country
        response = Countries::API.new.get_countries
        response.each { |country| Countries::Country.new(country)}
    end

    
    def get_country
        puts "
        __________What place would you like to learn about today?__________"                                                                                    
        input = gets.chomp.downcase
        # binding.pry
        @country = Countries::Country.find_by_name(input)
            #if input valid?
                puts "
                You have chosen #{@country.name}. Type D for description, or Type exit" 
                input = gets.chomp
                if input == "D"
                display_description
                get_country

                elsif input == "exit"
                end_program

                else input == invalid_input
                    #Type D for description, or type exit.


                end
            #end
        # then ask if they want any description, show description, 
        # "Type "D" for Description, or exit"

        #display_description unless input == country
    end

    def display_description
        puts "You have chosen #{@country.name}. The capital of #{@country.name} is #{@country.capital}.
              Population is about #{@country.population} people, with a timezone of about #{@country.timezones}."
    end

    def end_program
        puts "Thank You! See You Soon!" unless input == "exit"
    end

    def valid?




        #would have to be valid if the country is present within the hash of countries.
        #if not valid, should puts out and invalid response, "Invalid Response," and then run the get_country method to restart the method again.

    end





    def invalid_input
    end

    


    

    # def invalid_input
    #     if input == "no"
    #         puts "__________Would you like to search the couuntry by region?__________"
    #         response = gets.chomp
    #         if response == "yes" 
    #             puts "______Choose what region you want to go, by clicking the number on your keyboard______"
    #             # puts regions
    #             response

    #         elsif response == "no"
    #             puts "________________________Thank You! GoodBye!_________________________"
    #         # elsif response == "exit"
    #         #     type_exit
    #         end
    #     end
    # end

    # def self.type_exit
    #     if input == "exit" 
    #         exit
    #     else
    #         get_input
    #     end


    # end



end
#puts will be coming from this class only, and asking inputs only this class
