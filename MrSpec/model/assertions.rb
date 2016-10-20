module Assertions

  def assertTrue bool
    bool
  end

  def assertFalse bool
    !bool
  end

  def assertEquals value, value1
    value == value1
  end

end