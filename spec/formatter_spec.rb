require './lib/formatter'

RSpec.describe Formatter do
  describe '#print' do
    it 'prints an array in one line with spaces' do
      clean_string = " 1  2  3 "
      expect(Formatter.print([1,2,3])).to eq(clean_string) 
    end
  end
end