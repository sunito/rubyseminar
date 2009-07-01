require 'monitor'         # 1
class Counter < Monitor
  attr_reader :count
  def initialize
    @count = 0
    super                 # 2
  end
  def tick
    synchronize do        # 3
      @count += 1
    end                   # 3
  end
end

c = Counter.new
t1 = Thread.new { 10_000.times { c.tick } }
t2 = Thread.new { 10_000.times { c.tick } }
t1.join; t2.join
puts c.count
