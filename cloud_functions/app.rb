require "functions_framework"

FunctionsFramework.http("euler_one") do |request|
    key = request.params["key"].to_i
 
    count = 0

    (3..key - 1).each do |i|
      count += i if (i % 3).zero? || (i % 5).zero?
    end

    count.to_s
end

FunctionsFramework.http("euler_two") do |request|
    key = request.params["key"].to_i

    sum = 0
    return sum if key < 3

    i = 3
    sum = 2
    first_value = 2

    while i < key
      sum += i if i.even?
      next_value = first_value + i
      first_value = i
      i = next_value
      puts next_value
    end

    sum.to_s
end

FunctionsFramework.http("euler_three") do |request|
    key = request.params["key"].to_i

    key.prime_division.last.first.to_s
end
