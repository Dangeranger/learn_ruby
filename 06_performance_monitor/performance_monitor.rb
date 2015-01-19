require "time"

def measure(count=1)
  before = Time.now
  if count > 1
    time_list = []
    count.times { yield }
    after = Time.now
    time_list << after - before
    average_time = (time_list.inject { |sum, t| sum + n }) / count
  else
    count.times { yield }
    after = Time.now
    elapsed_time = after - before
  end
end
