class RetryJob < ApplicationJob
  queue_as :default

  def perform(*args)
    raise RetryLater.new
  end
end
