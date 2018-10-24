class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    # Do something
    puts '#{name} and #{count}'
  end
end
