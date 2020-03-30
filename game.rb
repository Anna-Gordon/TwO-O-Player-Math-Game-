class Game
  attr_accessor :current_player, :question
  def initialize 
    @question = Question.new
    @player1 = Player.new
    @player2 = Player.new
    @current_player = @player1
  end

  def status
    puts "P1: #{@player1.print_status} vs P2: #{@player2.print_status}"
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1  
  end

  def game_over
    if @current_player.lives == 0
      puts "Good bye!"
      exit(0)
    end
  end 
  
  def take_player_input
    print "> "
    gets.chomp.to_i
  end

end

