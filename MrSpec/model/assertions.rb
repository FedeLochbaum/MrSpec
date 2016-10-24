module Assertions

  def assertTrue bool
    if bool
      return bool
    else
      raise AssertionException
    end
  end

  def assertFalse bool
    if !bool
    !bool
    else
      raise AssertionException
    end
  end

  def assertEquals value, value1
    #Para que funcione entre dos objetos, requiere que se redefina el metodo :==
    if value.equal? value1
      return true
    else
      raise AssertionException
    end
  end

end

class AssertionException < Exception
end