class Formatter
  def self.clean(set)
    base = ''
    set.each do |item|
      base += " #{item} "
    end
    base
  end
end