module MyEnumerable
  def all?
    output = true
    @list.each do |e|
      output = false unless yield(e)
    end
    output
  end

  def any?
    output = false
    @list.each do |e|
      output = true if yield(e)
    end
    output
  end

  def filter
    output = []
    @list.each do |e|
      output.push(e) if yield(e)
    end
    output
  end
end