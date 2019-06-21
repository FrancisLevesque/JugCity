class Formatter
  def self.print(set)
    base = ''
    set.each do |item|
      base += " #{item} "
    end
    base
  end
end