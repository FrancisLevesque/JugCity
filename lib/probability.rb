class Probability
  def initialize(probabilities)
    @probabilities = probabilities
  end

  def get_dice_numbers(set, range)
    min, max = sanitize(range)
    total_percent = 0.0
    dice_numbers = set.select do |number|
      if total_percent < max
        if total_percent > min
          next if random_chance
        end

        number_percent = @probabilities[number]
        if total_percent + number_percent < max
          total_percent += number_percent
          number
        end
      end
    end
    dice_numbers
  end

  private
  def sanitize(range)
    return range.first.to_f, range.last.to_f  
  end

  def random_chance
    rand(2) == 0
  end
end
