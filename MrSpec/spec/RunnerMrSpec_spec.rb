require 'rspec'
require_relative '../model/mr_spec'
require_relative '../model/assertions'

describe 'Un Runner MrSpec' do
  let(:runner) {Object.new.extend(MrSpec)}

  it '' do
    expect(true).to eq true

  end
end