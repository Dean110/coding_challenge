module EulerFunctionsHelper

    # https://projecteuler.net/problem=1
    def euler_one(number_to_act_on)
        count = 0 
        
        for i in 3..number_to_act_on - 1 do
            count += i if (i % 3 == 0 || i % 5 == 0)
        end

        count
    end
end