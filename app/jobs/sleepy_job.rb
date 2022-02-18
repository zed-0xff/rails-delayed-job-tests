class SleepyJob < Que::Job
  def run(*args)
    sleep rand(10)
  end

  def log_level(elapsed)
    if elapsed > 2
      :warn
    else
      :info
    end
  end
end
