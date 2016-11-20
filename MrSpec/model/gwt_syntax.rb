class GwtSyntax

  def initialize

  end

  def Given *elems
    elems.each do |elem|
      # hacer que cada elemento sea una property de super
      #mm tal ves tenga que tomar un bloque tambien
    end
  end

  def When &block
      super.call block
      #hacer que super ejecute el bloque
  end

  def Then &assertion

    # ejecutamos assertion en super
  end

end