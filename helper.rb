require './game'
require './player'
require './questions'

def check_current_player?(current_player, player1, player2, non_current_player)
  question = Question.new

  puts ""
  puts "----- NEW TURN -----"
  if current_player == 1
    @non_current_player = player2
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    question.answer_correct?(answer, player1,  @non_current_player)
    switch_player?(@current_player, player1, player2, @non_current_player)
  else
    @non_current_player = player1
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    question.answer_correct?(answer, player2,  @non_current_player)
    switch_player?(@current_player, player1, player2, @non_current_player)
  end

end


def switch_player?(current_player, player1, player2, non_current_player)
  puts "P1: #{player1.blood}/3 vs P2: #{player2.blood}/3"

  if current_player == 1
    @current_player = 2
    check_current_player?(@current_player, player1, player2, non_current_player)
  else
    @current_player = 1
    check_current_player?(@current_player, player1, player2, non_current_player)
  end

end