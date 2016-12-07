require_relative '../model/assertions'
module SpecSyntax

  def expect receive, selector, expect
    obj = Object.new.extend(Assertions)
    if(selector.to_s.eql? "assertEquals")
          obj.send selector, receive, expect
    else
      obj.send selector, receive
    end
  end

end