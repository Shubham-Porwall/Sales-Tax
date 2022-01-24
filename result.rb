require_relative 'tax_calculate'
require_relative 'new_arr'
class Result
  include Create_Array
  RESULT = []
  def display(arr)
    obj = Calculate_Tax.new
    arr1 = return_result(arr)
    Result::RESULT << arr1
    puts Result::RESULT
    puts "Sales Tax : " + obj.return_sales_tax.to_s
    puts "Total : " + obj.return_sum_withtax.to_s
  end
end
