class Game

  attr_reader :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1

  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(other_player)
    other_player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player}.first
    #code
  end
end
