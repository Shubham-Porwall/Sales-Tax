class ReceiptPrinter
  def initialize(products)
    @products = products
  end

  def run
    sales_tax = 0.0
    total = 0.0

    @products.each do |product|
      sales_tax += product[:tax]
      final_price = (product[:price] + product[:tax]).round(2) 
      total += final_price
      puts "#{product[:quantity].to_s} #{product[:name]}: #{final_price.to_s}"
    end
    
    puts "Sales Tax: " + sales_tax.round(2).to_s
    puts "Total: " + total.to_s
  end
end
