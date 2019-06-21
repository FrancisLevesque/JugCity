require './climb'

RSpec.describe Climb do
  describe '#probability_set' do
    it 'for a 5.7 should include every dice number' do
      climb = Climb.new('5.7')
      expect(climb.probability_set).to eq([2,3,4,5,6,8,9,10,11,12])
    end

    it 'for a 5.9 should include some dice numbers' do
      climb = Climb.new('5.9')
      expect(climb.probability_set.empty?).to be false
    end

    it 'for a 5.13 should include no dice numbers' do
      climb = Climb.new('5.13')
      expect(climb.probability_set).to eq([])
    end
  end
end
