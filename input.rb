class Inp
  def inp
      @arr = []
      @ch
      begin
          puts "Enter the values"
          str = gets.chomp
          if ( str.split(/ /).first.to_f.negative?() || str.split(/ /).last.to_f.negative?() )
            puts "Price and value can't be negative"
            exit
          else
          @arr.push(str)
          end
          puts "Quit = 'q'"
          ch = gets.chomp
      end while ch != 'q'
      @arr
  end
end


