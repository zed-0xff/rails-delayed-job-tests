class ExceptionJob < ApplicationJob
  def perform(*args)
    raise 'foo'
  end

  retry_on Exception, attempts: 12 do |job, exception|
    p job
    p exception
  end
end
