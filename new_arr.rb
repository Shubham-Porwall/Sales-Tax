require_relative 'tax_calculate'
module Create_Array
  obj = Calculate_Tax.new
  TAXES = obj.return_all_tax_value
  NEW_ARR = []
  @@j = 0
  def return_result(arr)
    for i in (0...arr.length)
      temp = ""
      x = arr[i].split(/ /)
      for j in (0...x.length-2)
        temp = temp + x[j] + " "
      end
      temp = temp + ": " + Create_Array::TAXES[@@j].to_s
      @@j += 1
      Create_Array::NEW_ARR << temp
    end
    Create_Array::NEW_ARR
  end
end
    