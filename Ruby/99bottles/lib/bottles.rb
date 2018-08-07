class Bottles


    def verse(n)

        return "1 bottle of beer on the wall, 1 bottle of beer.\n" + 
            "Take it down and pass it around, no more bottles of beer on the wall.\n" if n == 1
        
        return "No more bottles of beer on the wall, no more bottles of beer.\n" + 
            "Go to the store and buy some more, 99 bottles of beer on the wall.\n" if n == 0

        return "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" + 
        "Take one down and pass it around, #{n-1} bottle of beer on the wall.\n" if n-1 == 1
        
        return "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" + 
            "Take one down and pass it around, #{n-1} bottles of beer on the wall.\n"
        
    end
        
    def verses(n, m) 
        
        #Not allowing string input
        if  n.is_a? String
            raise ArgumentError, "Cannot input string"
        elsif m.is_a? String
            raise ArgumentError, "Cannot input string"
        #Not allowing n values smaller than m
        elsif n < m
            raise ArgumentError, "n cannot be smaller than m"
        end
        
        result = ""
        
        while n != m-1
        
            if n == m
                result += verse(n)
            else 
                result += verse(n) + "\n"
            end
            n -= 1
        
        end
        
        return result
        
        
    end 

    def song
        return verses(99,0)
    end

end