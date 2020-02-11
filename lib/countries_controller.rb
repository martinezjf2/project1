

class Countries::CountriesController

    def run
        self.get_country
        # invalid_input
        
    end

    def list_countries
    end
    
    def get_country
        puts "________________Welcome to the Countries CLI APP!__________________"
        puts "__________What place would you like to learn about today?__________"                                                                                    
        input = gets.chomp
        response = Countries::API.new.get_countries
        response.each { |country| Countries::Country.new(country)}
        # fin_by_name method from the input and then ask if they want any description, show description.
        # binding.pry
        
        
        #display_country_info unless input == country
        # display_country(input)

    end

    def invalid_input
        if input == "no"
            puts "__________Would you like to search the couuntry by region?__________"
            response = gets.chomp
            if response == "yes" 
                puts "______Choose what region you want to go, by clicking the number on your keyboard______"
                # puts regions
                response

            elsif response == "no"
                puts "________________________Thank You! GoodBye!_________________________"
            # elsif response == "exit"
            #     type_exit
            end
        end
    end

    # def self.type_exit
    #     if input == "exit" 
    #         exit
    #     else
    #         get_input
    #     end


    # end



end
#puts will be coming from this class only, and asking inputs only this class
