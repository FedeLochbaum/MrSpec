require 'rspec'
require_relative '../../MrSpec/model/gwt_syntax'
require_relative '../../MrSpec/model/mr_spec'

describe 'GivenWhenThen debe funcionar' do
  let(:runner) {MrSpec.new().extend(GwtSyntax)}

  it 'Dado una lista de resultados debe darnos todos los que funcionaron' do
    runner.Given 2
    expect((runner.given_object)).to eq 2
  end

  it 'Al llamar when + 1 le suma 1' do
    runner.When :+, 1
    expect((runner.given_object)).to eq 3
  end



end
