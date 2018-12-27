class EventJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Event Job"
  end
end
