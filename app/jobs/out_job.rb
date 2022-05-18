require 'fileutils'

class OutJob < ApplicationJob
  queue_as :default

  def perform(id)
    fname = File.join(Rails.root, "out", "#{id.to_i}_#{rand(99999)}")
    FileUtils.touch(fname)
  end
end
