class EatMemoryJob
  include Sidekiq::Job

  def perform(*args)
    x = "boo"
    while true do
      x += x
    end
  end
end
