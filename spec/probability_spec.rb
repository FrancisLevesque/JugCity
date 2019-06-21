require './lib/probability'

RSpec.describe Probability do
  describe '#get_dice_numbers' do
    it 'returns dice 2 and 4 when given a range of 35-40' do
      probabilities = {
        2 => 10.0,
        4 => 20.0,
      }
      probability = Probability.new(probabilities)
      expect(probability.get_dice_numbers(probabilities.keys, [35, 40])).to eq([2, 4])
    end
  end
end