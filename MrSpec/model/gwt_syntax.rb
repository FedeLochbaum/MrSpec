module GwtSyntax

  def initialize

  end

  def Given elem
    # hacer que cada elemento sea una property de super
    #mm tal ves tenga que tomar un bloque tambien
    self.class.send(:define_method, :given_object) do
      elem
    end
  end

  def When method, *args
    #self.instance_variable_set()
      #self.given_object.call block
      #hacer que super ejecute el bloque
    value = self.given_object
    self.class.send(:remove_method, :given_object)
    self.class.send(:define_method, :given_object) do
      value.send(method, *args)
    end
  end

  def Then &assertion

    # ejecutamos assertion en super
  end

  def method_missing(m, *args, &block)
    if m.to_s == 'given_object'
      instance_variable_get("@given_object")
    end
  end

end
