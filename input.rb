class Input
  def read_input
    @input_store = []
    @for_quit
    begin
      puts "Enter the values"
      inputs = gets.chomp
      if ( inputs.split(/ /).first.to_f.negative?() || inputs.split(/ /).last.to_f.negative?() )
        puts "Price and value can't be negative"
        exit
        else
        @input_store.push(inputs)
      end
      puts "Quit = 'q'"
      @for_quit = gets.chomp
    end while @for_quit != 'q'
    @input_store
  end
end
