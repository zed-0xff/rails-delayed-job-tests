class SleepyJob < ApplicationJob
  def perform(*args)
    sleep rand(10)
  end
end
