class Person

  attr_accessor :document, :name

  def initialize(document, name)
    self.document = document
    self.name = name
  end

  def == other_person
    eq_document = self.document == other_person.document
    return eq_document
  end

end