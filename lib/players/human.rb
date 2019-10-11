module Players
  class Human < Player

    def move
      puts "Please input a number between 1-9:"
      user_input = gets.strip
    end

end
