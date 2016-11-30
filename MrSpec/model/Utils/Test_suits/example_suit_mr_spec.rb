class ExampleSuit_mr_spec

  def before
    it "seteo del contexto previo a la ejecucion de los test"
    @condition = nil
    @condition2 = nil
    @num = nil
    @num2 = nil
  end

  def assert_true_true_MrSpec
    it "verificamos que el assertTrue funciona"
    @condition = true
    assertTrue @condition
  end

  def assert_false_false_MrSpec
    it "verificamos que el assertFalse funciona"
    @condition2 = false
    expect @condition2, :assertEquals, false
  end

  def c

  end

  def assert_dos_eq_dos_MrSpec
    assertEquals 2, 2
  end

  def assert_tres_eq_dos_MrSpec
    it "verificamos que el asserEquals funciona"
    @num2 = 3
    @num = 2
    assertEquals @num2, @num
  end

  def f_MrSpec

  end

  def gtw_MrSpec
    it "se setea un contexto donde num2 = 2"
    Given {@num2 = 2}

    it "a num2 se le asigna su sucesor"
    When {@num2 = @num2+1}

    it "verifica que num2 es igual a 3"
    Then {assertEquals @num2, 3}
  end


  def after
    it "seteo del contexto posterior a la ejecucion de los test"
    @condition = nil
    @condition2 = nil
    @num = nil
    @num2 = nil
  end
end