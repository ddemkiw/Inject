class Array

  def new_inject(*args, &block)
    return new_inject(&args.shift) if args[0].is_a? Symbol
    return new_inject(args[0], &(args[1])) if ((args[0].is_a? Integer) && args.length == 2) 
    args.empty? ? memo = self.shift : memo = args.shift
    self.each { |item| memo = yield memo, item }
    return memo
  end 

end


