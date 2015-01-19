class Friend

  def greeting(name=nil)
    case
    when name
      "Hello, #{name}!"
    else
      "Hello!"
    end
  end
end
