class ErrorJob < DefaultJob
  def perform(*args)
    raise 'boo'
  end
end
