module TaxDetermination
  def is_exempt?(product)
    products = %w(pills book books chocolate chocolates)
    bool = false
    products.each do |i|
      if product.include?i
        bool = true
        break
      end
    end
    bool
  end
end
