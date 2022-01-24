require_relative 'tax_calculate'
require_relative 'new_arr'
class Result
  include New
  New_arr = []
  def display(arr)
    obj = Tax.new
    arr1 = disp(arr)
    Result::New_arr << arr1
    puts Result::New_arr
    puts "Sales Tax : " + obj.differ.to_s
    puts "Total : " + obj.ret_sum.to_s
  end
end


  
  