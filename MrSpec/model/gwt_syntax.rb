module GwtSyntax

  def initialize

  end

  def it string

  end

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
