require_relative 'tax_calculate'
module New
  obj = Tax.new
  Taxes = obj.ret_tax
  New_arr = []
  @@j = 0
  def disp(arr)
    for i in (0...arr.length)
      y = ""
      x = arr[i].split(/ /)
      for j in (0...x.length-2)
        y = y + x[j] + " "
      end
      y = y + ": " + New::Taxes[@@j].to_s
      @@j += 1
      New::New_arr << y
    end
    New::New_arr
  end
end
    