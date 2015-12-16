module ActiveTouch

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :async, :ignored_attributes, :queue

    def initialize
      @async = false
      @ignored_attributes = [:updated_at]
      @queue = 'default'
    end
  end

end