class SleepyJob < DefaultJob
  def perform(*args)
    sleep rand(10)
  end
end
