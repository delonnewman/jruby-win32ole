class WIN32OLE_METHOD
  attr_accessor :oletype, :typeinfo, :dispid, :name
  alias :to_s :name

  def initialize(*args)
    if args.length == 5 # Internal initializer
      @oletype,  @typeinfo, @owner_typeinfo, @name, @dispid = *args
    elsif args.length == 2 # Normal constructor
    else # Error
      raise ArgumentError.new("2 for #{args.length}")
    end
  end

  def inspect
    name
  end
end
