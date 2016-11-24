require '/home/trimegisto/Documentos/Universidad/Materias s2 2016/Ingenieria/grupal-MrSpec/MrSpec/model/Utils/Test_suits/example_suit_mr_spec.rb'
class RunnerMrSpec_mr_spec

  def before
    it "un Runner MrSpec"
    @runner = MrSpec.new
  end

  def test_methodIsMrSpecTest_MrSpec
    it 'Dado un metodo que termina con _MrSpec debe dar true al llamar a isMrSpecTest'
    @method = :test_person_eq_MrSpec
    assertTrue @runner.isMrSpecTest @method
  end

  def test_methodNotIsMrSpecTest_MrSpec
  it 'Dado un metodo que no termina con _MrSpec debe dar false al llamar a isMrSpecTest'
    @method = :test_person_eq
    assertFalse @runner.isMrSpecTest @method
  end

  def test_testHasMrSpecTest_MrSpec
  it 'Dada una clase con cinco metodos que terminan con _MrSpec la longitud de la lista getMrSpecTests debe dar cinco'
    assertEquals (@runner.getMrSpecTests ExampleSuit_mr_spec).size, 6
  end

  def test_testNoHasMrSpecTest_MrSpec
  it 'Dada una clase sin test que terminen con _MrSpec la longitud de la lista getMrSpecTests debe ser cero'
  assertEquals (@runner.getMrSpecTests Array).size, 0
  end

  def test_runAssertTrue_MrSpec
  it 'Deberia correr el test assert_true_true_MrSpec y dar true'
    result = @runner.run_test ExampleSuit_mr_spec, :assert_true_true_MrSpec
    assertTrue result.success?
  end

  def test_runAssertFalse_MrSpec
  it 'Deberia correr el test assert_false_false_MrSpec y dar false'
    result = @runner.run_test ExampleSuit_mr_spec, :assert_false_false_MrSpec
    assertTrue result.success?
  end

  def test_runTestAndReturnTrue_MrSpec
  it 'Deberia correr el test assert_dos_eq_dos_MrSpec y dar true'
    result = @runner.run_test ExampleSuit_mr_spec, :assert_dos_eq_dos_MrSpec
    assertTrue result.success?
  end

  def test_runTestAndReturnFalse_MrSpec
  it 'Deberia correr el test assert_tres_eq_dos_MrSpec y dar false'
    result = @runner.run_test ExampleSuit_mr_spec, :assert_tres_eq_dos_MrSpec
    assertFalse result.success?
  end

  def runAllTestExampleSuitMrSpecAndReturnAreport_MrSpec
  it 'Deberia correr todos los test de la clase ExampleSuitMrSpec y devolver un reporte, el cual indica que el test no paso'
    report = @runner.runTests ExampleSuit_mr_spec
    assertFalse report.success?
  end

  def runAllTestExampleSuitMrSpecAndReturnSuccesTests_MrSpec
  it 'Deberia correr todos los test de la clase ExampleSuitMrSpec y devolver los que pasaron'
    report = @runner.runTests ExampleSuit_mr_spec
    assertEquals report.getSuccessResult.size, 5
  end

  def runAllTestExampleSuitMrSpecAndReturnFailureTests_MrSpec
  it 'Deberia correr todos los test de la clase ExampleSuitMrSpec y devolver los que no pasaron'
    report = @runner.runTests ExampleSuit_mr_spec
    assertEquals report.getFailureResult.size, 1
  end

end