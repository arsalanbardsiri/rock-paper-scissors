# test/test_game.rb
require "minitest/autorun"
require_relative "../game_play"
require_relative "../select"

# Helper method: pure function for testing winner logic
def winner_result(p1_choice, p2_choice, p1, p2, vs_computer: false)
  if p1_choice == p2_choice
    result = "Tie!"
  elsif POSSIBILITIES[p1_choice] == p2_choice
    result = "Player 1 wins"
    p1.win
  else
    result = vs_computer ? "Computer wins" : "Player 2 wins"
    p2.win
  end
  result
end

class TestRockPaperScissors < Minitest::Test
  def setup
    @player_1 = Game.new
    @player_2 = Game.new
  end

  # Test computer choice always valid
  def test_computer_choice_valid
    choice = @player_1.shoot_computer
    assert_includes ["rock", "paper", "scissors"], choice
  end

  # Test manually assigned choices
  def test_valid_choices_after_assignment
    @player_1.choice = "rock"
    @player_2.choice = "paper"
    valid_choices = ["rock", "paper", "scissors"]
    assert_includes valid_choices, @player_1.choice
    assert_includes valid_choices, @player_2.choice
  end

  # Test 2-player winner logic
  def test_winner_logic_2player
    # Player 1 wins
    result = winner_result("rock", "scissors", @player_1, @player_2)
    assert_equal "Player 1 wins", result
    assert_equal 1, @player_1.score
    assert_equal 0, @player_2.score

    # Player 2 wins
    result = winner_result("rock", "paper", @player_1, @player_2)
    assert_equal "Player 2 wins", result
    assert_equal 1, @player_1.score
    assert_equal 1, @player_2.score

    # Tie
    result = winner_result("rock", "rock", @player_1, @player_2)
    assert_equal "Tie!", result
  end

  # Test vs computer logic
  def test_winner_logic_vs_computer
    result = winner_result("scissors", "paper", @player_1, @player_2, vs_computer: true)
    assert_equal "Player 1 wins", result
    assert_equal 1, @player_1.score
    assert_equal 0, @player_2.score

    result = winner_result("paper", "scissors", @player_1, @player_2, vs_computer: true)
    assert_equal "Computer wins", result
  end
end
