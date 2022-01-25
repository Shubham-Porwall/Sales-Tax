require_relative "input"
require_relative "sort"
require_relative "result.rb"

user = Input.new
input = user.read_input
user2 = Logic.new
user2.data_sort(input)
user3 = Result.new
user3.display(input)
