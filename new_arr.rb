require_relative 'tax_calculate'
module New
  obj = Tax.new
  TAXES = obj.ret_tax
  NEW_ARR = []
  @@j = 0
  def disp(arr)
    for i in (0...arr.length)
      y = ""
      x = arr[i].split(/ /)
      for j in (0...x.length-2)
        y = y + x[j] + " "
      end
      y = y + ": " + New::TAXES[@@j].to_s
      @@j += 1
      New::NEW_ARR << y
    end
    New::NEW_ARR
  end
end
    