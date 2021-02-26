require_relative 'manufacturer_name'
require_relative 'instance_counter.rb'

class Engine 
  include ::ManufacturerName
  include ::InstanceCounter
  def initialize
    @started = false
    register_instance
  end

  def start 
    @started = true
  end

  def stop
    @started = false
  end
end