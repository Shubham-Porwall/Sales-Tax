require_relative "input"
require_relative "sort"
require_relative "result.rb"

user = Input.new
arr = user.read_input
user2 = Logic.new
user2.data_sort(arr)
user3 = Result.new
user3.display(arr)
