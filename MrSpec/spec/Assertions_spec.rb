require 'rspec'
require_relative '../model/assertions'

describe 'Asserciones assertTrue, assertFalse y asserEquals' do
  let(:assert) {Object.new.extend(Assertions)}

  it 'cuando a assertTrue se le pasa True devuelve True' do
    expect(assert.assertTrue true).to eq true
  end

  it 'cuando a assertTrue se le pasa false devuelve false' do
    expect(assert.assertTrue false).to eq false
  end

  it 'cuando a assertFalse se le pasa True devuelve False' do
    expect(assert.assertFalse true).to eq false
  end

  it 'cuando a asserFalse se le pasa false devuelve true' do
    expect(assert.assertFalse false).to eq true
  end

  it 'cuando a assertEquals se le pasan dos cosas distintas devuelve false' do
    expect(assert.assertEquals 2, 3).to eq false
  end

  it 'cuando a assertEquals se le pasan dos cosas iguales devuelve true' do
    expect(assert.assertEquals 3,3).to eq true
  end




end