module Players
  class Human < Player

    def move
      puts "Please input a number between 1-9:"
      gets.strip
    end
  end

end
