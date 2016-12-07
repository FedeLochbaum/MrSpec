require '/home/trimegisto/Documentos/Universidad/Materias s2 2016/Ingenieria/grupal-MrSpec/MrSpec/model/Utils/Example_classes/person.rb'
class Assertions_mr_spec

  def before
    it "dos personas cualquiera"
    @person1 = Person.new(14687697, "Jose")
    @person2 = Person.new(32687654, "Daniel")
    @assert = Object.new.extend(Assertions)
  end

  def test_asssertTrueTrue_MrSpec
  it 'cuando a assertTrue se le pasa True devuelve True'
    assertTrue @assert.assertTrue true
  end

  def test_assertFalseFalse_MrSpec
  it 'cuando a asserFalse se le pasa false devuelve true'
    assertTrue @assert.assertFalse false
  end

  def test_assertEquals_MrSpec
  it 'cuando a assertEquals se le pasan dos personas iguales devuelve true'
    assertTrue @assert.assertEquals @person1, @person1
  end

  ##FALTAN 3 TEST, LOS QUE DEVUELVEN EXCEPTION
end