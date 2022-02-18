class RetryJob < Que::Job
  def run(*args)
    raise "foo"
  end
end
