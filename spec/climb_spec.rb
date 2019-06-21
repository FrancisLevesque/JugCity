require './lib/climb'

RSpec.describe Climb do
  describe '#initialize' do
    it 'raises an error for a 5.6 climb' do
      error = '5.6 is not a supported climbing grade.'
      expect { Climb.new('5.6') }.to raise_error(RuntimeError, error)
    end
  end

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
