
n_list = ARGV.map { |arg| arg.to_i }
sorted_list = n_list.sort 
midpoint = sorted_list.length / 2


if sorted_list.length.even? 
    puts (sorted_list[midpoint - 1] + sorted_list[midpoint]) / 2.0
else
    puts sorted_list[midpoint]
end
