require 'colorize'

class Test_result
    attr_accessor :exception, :signature, :test_case

    def initialize(signature, test_case,exception)
      @exception = exception
      @signature = signature
      @test_case = test_case
    end

    def failure?
      false
    end

    def success?
      false
    end

    def succesMessage
      ("El test " + signature.to_s + " de la clase " + test_case.to_s + "se ha ejecutado correctamente").colorize(:green).bold
    end

    def failureMessage
      ("Error en test " + signature.to_s + " de la clase " + test_case.to_s + " " + exception.message).colorize(:red).bold
    end

end

 class TestSucceded < Test_result
    def success?
      true
    end

   def message
      case exception
        when nil
          succesMessage
        else
          failureMessage
      end
    end
 end

 class TestFailed < Test_result
   def failure?
     true
   end

   def message
     failureMessage
   end
 end

