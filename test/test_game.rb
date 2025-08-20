require "minitest/autorun"
require_relative "../game_play"
require_relative "../select"

# Pure helper (no I/O)
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
    @player_1 = Select.new
    @player_2 = Select.new
  end

  def test_computer_choice_valid
    choice = @player_2.shoot_computer
    assert_includes ["rock", "paper", "scissors"], choice
  end

  def test_valid_choices_after_assignment
    @player_1.choice = "rock"
    @player_2.choice = "paper"
    assert_includes ["rock", "paper", "scissors"], @player_1.choice
    assert_includes ["rock", "paper", "scissors"], @player_2.choice
  end

  def test_winner_logic_2player
    result = winner_result("rock", "scissors", @player_1, @player_2)
    assert_equal "Player 1 wins", result
    assert_equal 1, @player_1.score
    assert_equal 0, @player_2.score

    result = winner_result("rock", "paper", @player_1, @player_2)
    assert_equal "Player 2 wins", result
    assert_equal 1, @player_1.score
    assert_equal 1, @player_2.score

    result = winner_result("rock", "rock", @player_1, @player_2)
    assert_equal "Tie!", result
  end

  def test_winner_logic_vs_computer
    result = winner_result("scissors", "paper", @player_1, @player_2, vs_computer: true)
    assert_equal "Player 1 wins", result
    assert_equal 1, @player_1.score
    assert_equal 0, @player_2.score

    result = winner_result("paper", "scissors", @player_1, @player_2, vs_computer: true)
    assert_equal "Computer wins", result
  end
end
