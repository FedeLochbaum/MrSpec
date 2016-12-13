module GwtSyntax

  def Given &contex
    contex.call
  end

  def When &block
    block.call
  end

  def Then &assertion
    assertion.call
  end

end
