require './lib/probability'

class Beta
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

  BETA_PROBABILITIES = {
    'good' => [15.0, 20.0],
    'beta' => [0.0, 15.0],
    'bad'  => [0.0, 20.0],
  }

  def initialize(difficulty)
    raise "#{difficulty} is not a supported Beta level." if BETA_PROBABILITIES[difficulty].nil?
    @difficulty = difficulty
  end

  def probability_set
    set = DICE_PROBABILITIES.keys.shuffle
    probability = Probability.new(DICE_PROBABILITIES)
    probability.get_dice_numbers(set, probability_range).sort
  end

  private
  def probability_range
    BETA_PROBABILITIES[@difficulty]
  end
end
