

class Countries::CountriesController

    def run
        self.create_country
        puts ""
        puts "==================================================================="
        puts "________________Welcome to the Countries CLI APP!__________________"
        puts "==================================================================="
        puts ""

        self.get_country
        self.end_program
        # invalid_input
        
    end

    def create_country
        response = Countries::API.new.get_countries
        response.each { |country| Countries::Country.new(country)}
    end

    
    def get_country
        puts ""
        puts "==================================================================="
        puts "__________What place would you like to learn about today?__________"
        puts "===================================================================" 
        puts ""                                                                                   
        input = gets.chomp.downcase
        @country = Countries::Country.find_by_name(input)
        #You need to check if the input that a user gives for a country name IS a name of a country, make a valid method
            #if valid(country)?
                puts ""
                puts "======================================================================================"
                puts "________You have chosen #{@country.name}. Type D for description, or Type Exit________" 
                puts "======================================================================================"
                puts ""

                input = gets.chomp.capitalize
                display_description if input == "D" 
                get_country
                end_program if input == "Exit"
                end_program
                

                # else input == invalid_input
                   
        # "Type "D" for Description, or exit"


    end

    def display_description
        puts ""
        puts "You have chosen #{@country.name}. The capital of #{@country.name} is #{@country.capital}."
        puts "Population is about #{@country.population} people, with a timezone of about #{@country.timezones}."
        puts ""
        puts ""
        puts "===================================================================================================================="
        puts "Would you like to learn more about a different country? Type Y For Another Country, or Exit To Leave The Application"
        puts "===================================================================================================================="
        puts ""
        input = gets.chomp.capitalize
        if input == "Y"
            get_country
        else input == "exit" #this wont work if i type exit
        end_program
        end

    end

    def end_program
        input = gets.chomp.downcase
        if input == "Exit"
            puts "========================"
            puts "Thank You! See You Soon!"
            puts "========================"
            puts ""
            exit
        else
        end

    end

    def valid?




        #would have to be valid if the country is present within the hash of countries.
        #if not valid, should puts out and invalid response, "Invalid Response," and then r
        #un the get_country method to restart the method again.

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
