require_relative 'engine.rb'
require_relative 'manufacturer_name'
require_relative 'instance_counter.rb'

class Car 
  include ::ManufacturerName
  include ::InstanceCounter
  def initialize
    @engine = Engine.new
    @state = :closed
    @load = false
    register_instance
  end

  attr_reader :engine

  def open
    @state = :open
  end

  def load
    @load = true
  end

  def start_engine
    @engine.start
  end

  def stop_engine
    @engine.stop
  end
end

a = Car.new
a.name = 'BMW'
a.name