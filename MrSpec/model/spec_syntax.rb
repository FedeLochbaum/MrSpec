require_relative '../model/assertions'
module SpecSyntax

  def it string
  end

  def expect receive, selector, expect
    obj = Object.new.extend(Assertions)

    case selector.to_s
      when "assertEquals"
        obj.send selector, receive, expect
      else
        obj.send selector, receive
    end

  end
end