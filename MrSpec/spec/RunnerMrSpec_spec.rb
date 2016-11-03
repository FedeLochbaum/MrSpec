require 'rspec'
require_relative '../model/mr_spec'
require_relative '../model/assertions'
require_relative '../model/Utils/Test_suits/example_suit'

describe 'Un Runner MrSpec' do
  let(:runner) {MrSpec.new}

  it 'Dado un metodo que termina con _MrSpec debe dar true al llamar a isMrSpecTest' do
    @method = :test_person_eq_MrSpec
    expect(runner.isMrSpecTest @method).to eq true
  end

  it 'Dado un metodo que no termina con _MrSpec debe dar false al llamar a isMrSpecTest' do
    @method = :test_person_eq
    expect(runner.isMrSpecTest @method).to eq false
  end

  it 'Dada una clase con cinco metodos que terminan con _MrSpec la longitud de la lista getMrSpecTests debe dar cinco' do
    expect((runner.getMrSpecTests ExampleSuit).size).to eq 5
  end

  it 'Dada una clase sin test que terminen con _MrSpec la longitud de la lista getMrSpecTests debe ser cero' do
    expect((runner.getMrSpecTests Array).size).to eq 0
  end

  it 'Deberia correr el test assert_true_true_MrSpec y dar true' do
    result = runner.run_test ExampleSuit, :assert_true_true_MrSpec
    expect(result.success?).to eq true
  end

  it 'Deberia correr el test assert_false_false_MrSpec y dar false' do
    result = runner.run_test ExampleSuit, :assert_false_false_MrSpec
    expect(result.success?).to eq true
  end

  it 'Deberia correr el test assert_dos_eq_dos_MrSpec y dar true' do
    result = runner.run_test ExampleSuit, :assert_dos_eq_dos_MrSpec
    expect(result.success?).to eq true
  end

  it 'Deberia correr el test assert_tres_eq_dos_MrSpec y dar false' do
    result = runner.run_test ExampleSuit, :assert_tres_eq_dos_MrSpec
    expect(result.success?).to eq false
  end

  it 'Deberia correr todos los test de la clase ExampleSuit y devolver un reporte, el cual indica que el test no paso' do
    report = runner.runTests ExampleSuit
    expect(report.success?).to eq false
  end

  it 'Deberia correr todos los test de la clase ExampleSuit y devolver los que pasaron' do
    report = runner.runTests ExampleSuit
    expect(report.getSuccessResult.size).to eq 4
  end

  it 'Deberia correr todos los test de la clase ExampleSuit y devolver los que no pasaron' do
    report = runner.runTests ExampleSuit
    expect(report.getFailureResult.size).to eq 1
  end

end
