require_relative 'player'

class Game
  attr_reader :attacker, :opponent

  def initialize(player1, player2)
    @players = [player1, player2]
    @attacker = player1
    @opponent = player2
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def switch_turn
    @attacker = opponent_of(attacker)
    @opponent = opponent_of(opponent)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
