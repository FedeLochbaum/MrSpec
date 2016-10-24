require_relative '../../../model/assertions'

class ExampleSuit

  def assert_true_true_MrSpec
    assertTrue true
  end

  def assert_false_false_MrSpec
    assertFalse false
  end

  def c

  end

  def assert_dos_eq_dos_MrSpec
    assertEquals 2, 2
  end

  def assert_tres_eq_dos_MrSpec
    assertEquals 3, 2
  end

  def f_MrSpec

  end
end