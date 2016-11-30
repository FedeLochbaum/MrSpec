require '/home/trimegisto/Documentos/Universidad/Materias s2 2016/Ingenieria/grupal-MrSpec/MrSpec/model/assertions.rb'
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