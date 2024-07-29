def average(num_list)
    average = num_list.sum(0.0) / num_list.size
end

num_list = ARGV.map { |arg| arg.to_i }
puts average(num_list)