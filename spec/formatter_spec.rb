require './lib/formatter'

RSpec.describe Formatter do
  describe '#clean' do
    it 'clean an array into one line with spaces' do
      clean_string = " 1  2  3 "
      expect(Formatter.clean([1,2,3])).to eq(clean_string) 
    end
  end
end