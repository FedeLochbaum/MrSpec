class Test_result
    attr_accessor :exception, :signature, :test_case

    def initialize(signature, test_case,exception)
      self.exception = exception
      self.signature = signature
      self.test_case = test_case
    end

    def failure?
      false
    end

    def success?
      false
    end

end

 class TestSucceded < Test_result
    def success?
      true
    end

   def message
      if(self.exception.nil?)
        "El test " + signature.to_s + " de la clase " + self.test_case.to_s + "se ha ejecutado correctamente"
      else
        self.exception.message
      end
    end
 end

 class TestFailed < Test_result
   def failure?
     true
   end

   def message
     self.exception.message
   end
 end

