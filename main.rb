require_relative "input"
require_relative "sort"
require_relative "result.rb"


user = Inp.new
arr = user.inp
user2 = Logic.new
user2.data_sort(arr)
user3 = Result.new
user3.display(arr)