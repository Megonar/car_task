module InstanceCounter
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  module ClassMethods
    def instances 
      @instances 
    end 

    def register_instance
      @instance.to_i += 1
    end
  end

  def register_instance
    self.class.register_instance
  end
end