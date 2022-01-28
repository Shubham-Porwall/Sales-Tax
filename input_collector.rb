class InputCollector
  def call
    input_store = []
    for_quit = ''
    begin
      puts "Enter the values"
      inputs = gets.chomp
      splitted = inputs.split(/ /)
      if (splitted.first.to_f.negative? || splitted.last.to_f.negative?)
        puts "Price and value can't be negative"
        exit
      else
        input_store.push(inputs)
      end
      puts "Quit = 'q'"
      for_quit = gets.chomp
    end while for_quit != 'q'
    input_store
  end
end
