require './game'
require './question'
require './player'

class Turns

    def initialize()
        @q1 = Question.new()
        @game = Game.new()
        @player1 = Player.new()
        @player2 = Player.new()
    end


    def start_game()
        until @game.gameover do

            first_number = @q1.questionGenerator[0]
            second_number = @q1.questionGenerator[1]
        
            actualsum = first_number + second_number
        
            puts "Player #{@game.currentPlayer}: What does #{first_number} + #{second_number} equal?"
            playerinput = gets.chomp
        
            if (playerinput.to_i == actualsum.to_i)
            puts "Player #{@game.currentPlayer}: YES! You are correct"
            puts "P1: #{@player1.lives}/3 VS P2: #{@player2.lives}/3"
            else
            puts "Player #{@game.currentPlayer}: Seriously? No!"
            if @game.currentPlayer == 1
                @player1.lives -= 1
            elsif @game.currentPlayer == 2
                @player2.lives -= 1
            end
            puts "P1: #{@player1.lives}/3 VS P2: #{@player2.lives}/3"
            end
        
            if @player1.lives == 0 || @player2.lives == 0
            @game.gameover = true
            if @player1.lives == 0
                puts "Player 2 wins with a score of #{@player2.lives}/3"
            else
                puts "Player 1 wins with a score of #{@player1.lives}/3"
            end
            end
        
            if @game.currentPlayer == 1
                @game.currentPlayer = 2
                else
                @game.currentPlayer = 1
            end
        
        end
    end
end