require_relative "container_type"

class Verse

    attr_reader :number, :container, :beverage

    def initialize(number, container, beverage)
        @number = number
        @container = container
        @beverage = beverage
        @action = action(number) 
    end

    #return the appropriate action depending on plural/singular sentences
    def action(number) 
        case 
        when number == 1
            return "Take it down and pass it around, no more #{@container.containerNamePl} of #{@beverage} on the wall.\n"
        when number == 0
            return "Go to the store and buy some more, 99 #{@container.containerNamePl} of #{@beverage} on the wall.\n"
        when number-1 == 1
            "Take one down and pass it around, #{@number-1} #{@container.containerName} of #{@beverage} on the wall.\n"
        when number > 1 === true
            return "Take one down and pass it around, #{@number-1} #{@container.containerNamePl} of #{@beverage} on the wall.\n"
        end
    end

    #return the correct plural or singular verse
    def getVerse
        if (@number == 1)
            return "#{@number} #{@container.containerName} of #{@beverage} on the wall, #{@number} #{@container.containerName} of #{@beverage}.\n" << @action
        elsif (@number == 0)
            return "No more #{@container.containerNamePl} of #{@beverage} on the wall, no more #{@container.containerNamePl} of #{@beverage}.\n" << @action
        else
            return "#{@number} #{@container.containerNamePl} of #{@beverage} on the wall, #{@number} #{@container.containerNamePl} of #{@beverage}.\n" << @action
        end
    end


end