class HomeController < ApplicationController
    def landing 
    end

    def alvin
    end   
    
    def will
    end

    def cubed
        @cubed_num = params[:cubed_num]
        @cubed_num = @cubed_num.to_i**3
    end

    def evenly
        @even_div1 = params[:even_div1]
        @even_div2 = params[:even_div2]

        if @even_div1.to_i % @even_div2.to_i == 0
            @results = @even_div1 + " is divisible by " + @even_div2
        else
            @results = @even_div1 + " is not divisible by " + @even_div2
        end

    end

    def palindrome
        @palindrome_word = params[:palindrome_word]

        if @palindrome_word.downcase != @palindrome_word.downcase.reverse  
              @results = @palindrome_word + " is not a palindrome."
        else
            @results = @palindrome_word + " is a palindrome."  
        end

    end

    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adj = params[:adj]
        @adv = params[:adv]

            @results = "Once upon a time there was a " + @noun + " who lived in a well furnished box in Malibu and spends all his time " + @verb + ". One day someone " + @adv + " punted his box and it rolled into the " + @adj + " ocean. THE END" 
    end
end
