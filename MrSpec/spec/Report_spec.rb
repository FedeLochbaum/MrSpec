require 'rspec'
require_relative '../model/report'
require_relative '../model/assertions'
require_relative '../model/test_results'
require_relative '../model/Utils/Test_suits/example_suit_mr_spec'

describe 'Un Reporte MrSpec con 3 test, 2 success y 1 failure' do
  before :each do
    @report = Report.new
    @report.addResult(TestSucceded.new :sarasa_MrSpec, ExampleSuit_mr_spec, nil)
    @report.addResult(TestSucceded.new :nuevoTest_MrSpec, ExampleSuit_mr_spec, nil)
    @report.addResult(TestFailed.new :testFeo_MrSpec, ExampleSuit_mr_spec, Exception.new)
  end

  it 'Dado una lista de resultados debe darnos todos los que funcionaron' do
    expect(@report.getSuccessResult.size).to eq 2
  end

  it 'Dado una lista de resultados debe darnos todos los que fallaron' do
    expect(@report.getFailureResult.size).to eq 1
  end

  it 'Dado los resultados, el reporte dice cuanto tardo en ejecutar todos los resultados' do
    expect(@report.timeLapse).to be_between 0.0, 5.0
  end

end