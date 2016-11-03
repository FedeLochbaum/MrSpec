require_relative '../../../model/assertions'

class ExampleSuit

  def before
    @condition = nil
    @condition2 = nil
    @num = nil
    @num2 = nil
  end

  def assert_true_true_MrSpec
    @condition = true
    assertTrue @condition
  end

  def assert_false_false_MrSpec
    @condition2 = false
    assertFalse @condition2
  end

  def c

  end

  def assert_dos_eq_dos_MrSpec
    assertEquals 2, 2
  end

  def assert_tres_eq_dos_MrSpec
    @num2 = 3
    @num = 2
    assertEquals @num2, @num
  end

  def f_MrSpec

  end


  def after
    @condition = nil
    @condition2 = nil
    @num = nil
    @num2 = nil
  end
end