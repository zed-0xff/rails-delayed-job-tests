class RetryJob < ApplicationJob
  def perform(*args)
    raise RetryLater.new
  end
end
