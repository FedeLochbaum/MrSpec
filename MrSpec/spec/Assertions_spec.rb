require 'rspec'
require_relative '../model/assertions'
require_relative '../model/Utils/Example_classes/person'

describe 'Asserciones assertTrue, assertFalse y asserEquals' do

  before :each do
    @person1 = Person.new(14687697, "Jose")
    @person2 = Person.new(32687654, "Daniel")
  end

  let(:assert) {Object.new.extend(Assertions)}

  it 'cuando a assertTrue se le pasa True devuelve True' do
    expect(assert.assertTrue true).to eq true
  end

  it 'cuando a assertTrue se le pasa false devuelve false' do
    expect{assert.assertTrue false}.to raise_exception(AssertionException )
  end

  it 'cuando a assertFalse se le pasa True devuelve False' do
    expect{assert.assertFalse true}.to raise_exception(AssertionException )
  end

  it 'cuando a asserFalse se le pasa false devuelve true' do
    expect(assert.assertFalse false).to eq true
  end

  it 'cuando a assertEquals se le pasan dos personas distintas devuelve false' do
    expect{assert.assertEquals @person1, @person2}.to  raise_exception(AssertionException )
  end

  it 'cuando a assertEquals se le pasan dos personas iguales devuelve true' do
    expect(assert.assertEquals @person1, @person1).to eq true
  end


end