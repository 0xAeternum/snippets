require_relative "container_type"
require_relative "verse"

class Bottles

    def verse(n)
        container = ContainerType.new("bottle","bottles",n)
        beverage = "beer"
        Verse.new(n,container,beverage).getVerse()
    end

    def song
        verses(99,0)
    end

    def verses(n,m)

        n.downto(m).map do |i|
            verse(i)
        end.join("\n")

    end
end