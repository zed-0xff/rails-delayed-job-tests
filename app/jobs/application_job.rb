class ApplicationJob < Que::Job
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError

  class RetryLater < Exception
    # do not pollute logs with unwanted backtraces
    def backtrace
      []
    end
  end

  retry_on RetryLater, wait: :exponentially_longer, attempts: 10
end
