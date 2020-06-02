  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i += 1
    end
    self[0]
  end

  def my_map
    result = []
    each do |item|
      result << yield(item)
    end
    result
  end

  def my_inject(initial=nil)
    acc = initial
    my_each do |item|
      if acc.nil?
        acc = item
      else
        acc = yield(acc, item)
      end
    end
    acc
  end