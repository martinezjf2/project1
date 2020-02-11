


class Countries::Country
    
    attr_accessor :name, :capital, :population, :timezones

    @@countries =[]

    def initialize(attributes)
        attributes.each do |key, value|
            begin
            self.send("#{key}=", value)
            rescue NoMethodError
            end
        end
        @@countries << self
    end

    def self.all
        @@countries
    end

    def self.find_by_name(name)
        @@countries.detect { |country| country.name == name}
    end

    


    # def display_regions
    # end

    # def country
    # end

end
