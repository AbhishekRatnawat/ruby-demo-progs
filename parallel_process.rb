#script to see differents between consistently calculation and parallel calculation

require 'parallel'


#function can compute more efficiently and I know it :)
def is_prime?(num)
  return true if num == 1
  return false if num < 1
  for x in 2...num
    return false if num % x == 0
  end
  true
end

def get_sum_of_prime_numbers( array )
  array
    .select{|num| is_prime? num }
    .reduce(:+)
end

def exec_time(proc)
  begin_time = Time.now
  proc.call
  Time.now - begin_time
end

calculate = proc do |array|
  res = get_sum_of_prime_numbers(array)
  puts "result is: #{res}"
end


#procs
first_proc = proc do
  arrays = [ Array(1...60000), Array(1...50000), Array(1...10000) ]

  arrays.map do |array|
    calculate.call array
  end
end

second_proc = proc do
  arrays = [ Array(1...60000), Array(1...50000), Array(1...10000) ]

  Parallel.map(arrays, in_processes: 5) { |array|
    
    calculate.call array
  }
end


#calculations
#puts "first: "
#time = exec_time( first_proc )
#puts "time is #{time}\n\r"

puts "second: "
time = exec_time( second_proc )
puts "time is #{time}\n\r"

puts "end of script"
