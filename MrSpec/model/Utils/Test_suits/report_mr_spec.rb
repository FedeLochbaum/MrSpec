require '/home/trimegisto/Documentos/Universidad/Materias s2 2016/Ingenieria/grupal-MrSpec/MrSpec/model/report.rb'
class Report_mr_spec

  def before
    it 'Un Reporte MrSpec con 3 test, 2 success y 1 failure'
    @report = Report.new
    @report.addResult(TestSucceded.new :sarasa_MrSpec, ExampleSuit_mr_spec, nil)
    @report.addResult(TestSucceded.new :nuevoTest_MrSpec, ExampleSuit_mr_spec, nil)
    @report.addResult(TestFailed.new :testFeo_MrSpec, ExampleSuit_mr_spec, Exception.new)
  end

  def test_AllSuccesResult_MrSpec
  it 'Dado una lista de resultados debe darnos todos los que funcionaron'
    assertEquals @report.getSuccessResult.size, 2
  end

  def test_AllFailureResult_MrSpec
  it 'Dado una lista de resultados debe darnos todos los que fallaron'
    assertEquals @report.getFailureResult.size, 1
  end

  def test_TimeLapse_MrSpec
  it 'Dado los resultados, el reporte dice cuanto tardo en ejecutar todos los resultados'
    assertTrue (@report.timeLapse).between? 0.0, 5.0
  end

end