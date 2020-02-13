

class Countries::CountriesController

    def run
        create_country
        puts ""
        puts "====================================================================="
        puts "  -------------- Welcome to the Countries CLI APP! ----------------"
        puts "====================================================================="
        puts ""
        get_country
    end

    def create_country
        response = Countries::API.new.get_countries
        response.each { |country| Countries::Country.new(country)}
    end

    
    def get_country
        puts ""
        puts "====================================================================="
        puts "  -------- What place would you like to learn about today? --------"
        puts "=====================================================================" 
        puts ""                                                                                   
        input = gets.chomp.downcase

            if valid(input)
                puts ""
                puts "============================================================================================"
                puts "  -------- You have chosen #{@country.name}. Type D for description, or Type Exit --------" 
                puts "============================================================================================"
                puts ""
                check_input    
            elsif input == "exit"
                end_program
            else 
                invalid_input
            end
    end

    def check_input
        input = gets.chomp.downcase
        if input == "d"
            display_description
        elsif input == 'exit'
            end_program
        end 
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
        input = gets.chomp.downcase
        if input == "y"
            get_country
        elsif input == "exit" 
            end_program
        end
    end

    def end_program
            puts "" 
            puts "=============================================="
            puts "  -------- Thank You! See You Soon! --------  "
            puts "=============================================="
            puts ""
    end

    def valid(input)
        if Countries::Country.find_by_name(input)
            @country = Countries::Country.find_by_name(input)
        else
            false
        end
    end
        
    def invalid_input
        puts "Sorry, I did not understand what you want."
        get_country
    end
end

