class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    # Do something
    puts 'HARD WORKER'
  end
end
