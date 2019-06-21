require './lib/probability'

class Climb
  DICE_PROBABILITIES = {
    2 => 2.78,
    3 => 5.56,
    4 => 8.33,
    5 => 11.11,
    6 => 13.89,
    # 7 => 16.67,
    8 => 13.89,
    9 => 11.11,
    10 => 8.33,
    11 => 5.56,
    12 => 2.78,
  }

  CLIMB_PROBABILITIES = {
    '5.13' => [0.0, 0.0],
    '5.12' => [0.1, 9.9],
    '5.11' => [10.0, 19.9],
    '5.10' => [20.0, 39.9],
    '5.9'  => [40.0, 59.9],
    '5.8'  => [60.0, 82.9],
    '5.7'  => [83.0, 100.0],
  }

  def initialize(difficulty)
    raise "#{difficulty} is not a supported climbing grade." if CLIMB_PROBABILITIES[difficulty].nil?
    @difficulty = difficulty
  end

  def probability_set
    set = DICE_PROBABILITIES.keys.shuffle
    probability = Probability.new(DICE_PROBABILITIES)
    probability.get_dice_numbers(set, probability_range).sort
  end

  private
  def probability_range
    CLIMB_PROBABILITIES[@difficulty]
  end
end
