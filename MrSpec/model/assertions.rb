module Assertions

  def assertTrue bool
    if bool
      return bool
    else
      raise AssertionException.new ("Esperaba True Pero Fue " + bool.to_s)
    end
  end

  def assertFalse bool
    assertTrue !bool
  end

  def assertEquals value, value1
    #Para que funcione entre dos objetos, requiere que se redefina el metodo :==
    if value.equal? value1
      return true
    else
      raise AssertionException.new ("Esperaba " + value.to_s + " " + "Pero Fue " + value1.to_s)
    end
  end

end

class AssertionException < Exception
  attr_accessor :message
  def initialize message
    self.message = message
  end


end