module EulerFunctionsHelper

    # https://projecteuler.net/problem=1
    def euler_one(number_to_act_on)
        count = 0 
        
        for i in 3..number_to_act_on - 1 do
            count += i if (i % 3 == 0 || i % 5 == 0)
        end

        count
    end
    # https://projecteuler.net/problem=2
    def euler_two(number_not_to_exceed)

        sum = 0
        return sum if number_not_to_exceed < 3
        
        i=3
        sum = 2
        first_value = 2

        while i < number_not_to_exceed
            sum += i if i % 2 == 0   
            next_value = first_value + i
            first_value = i
            i = next_value
            puts next_value
        end

        sum
    end
end