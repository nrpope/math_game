class Game

  def initialize

  end

  def start_game
    puts "                                          "
    puts "~~~~~Welcome to the Math Game!~~~~~~"
    puts "                                          "
    puts "Each player has 3 lives, and you lose a life\nwhen you answer a question incorrectly."
    puts "-------"
    puts "When either one of the players runs out of\nlives, the game ends."
    puts "---------"
    puts "If you're ready to start, type 'y' in the prompt"
    ask_to_start
  end
  #ask both players if they are ready to start
  def ask_to_start
    (1..2).each do |id|
      puts "\nPlayer #{id}: Ready to start?"
      print "> "
      answer = gets.chomp
      #keep asking until they enter y
      while (answer != "y")
        puts "Please type 'y' to start. Ready to start?"
        print "> "
        answer = gets.chomp
      end
    end
    puts "\n~~~~~~~~~~ The Game starts... now! ~~~~~~~~~~"
    ask_question
  end

  # Asks the current player a random question
  def ask_question
    question = Question.new
    puts "\nPlayer 1: #{question.text}"
  end 
end