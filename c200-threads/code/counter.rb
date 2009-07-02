class Counter
  attr_reader :count
  def initialize
    @count = 0
  end
  def tick
    @count += 1
  end
end

c = Counter.new
t1 = Thread.new { 10_000.times { c.tick } }
t2 = Thread.new { 10_000.times { c.tick } }
t1.join; t2.join
puts c.count
