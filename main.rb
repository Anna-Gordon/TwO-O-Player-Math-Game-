require './game'
require './player'
require './question'

game = Game.new

until game.game_over
  game.question.print_question
  answer = game.take_player_input
  
  if answer == game.question.correct_answer
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    game.current_player.wrong_answer
  end
  game.switch_player
  game.status
end
