module Assertions

  def assertTrue bool
    bool
  end

  def assertFalse bool
    !bool
  end

  def assertEquals value, value1
    value.equal? value1
  end

end