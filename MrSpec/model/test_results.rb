class Test_result
    attr_accessor :exception, :signature

    def initialize(signature, exception=nil)
      self.exception = exception
      self.signature = signature
    end

    def failure?
      false
    end

    def success?
      false
    end

    def message
      self.exception.message
    end
end

 class TestSucceded < Test_result
    def success?
      true
    end
 end

 class TestFailed < Test_result
   def failure?
     true
   end
 end

