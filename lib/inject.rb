class Array

#   def new_inject(arg=nil, symbol=nil, &block)
#     return new_inject(&arg) if arg.is_a? Symbol
#     return new_inject(arg, &symbol) if symbol
#     arg ? memo = arg : memo = self.shift
#     self.each { |item| memo = yield memo, item }
#     return memo
#   end
  
# end


  def new_inject(*args, &block)
    copy = self.dup
    return new_inject(&args.shift) if args[0].is_a? Symbol
    
    if args[0].is_a? Integer
        if block_given?
          memo = args[0]
          self.each { |item| memo = yield memo, item }
          return memo
        else 
          memo = args[0]
          return new_inject(memo, &(args[1]))
        end  

    
      else
        memo = self.shift
        self.each { |item| memo = yield memo, item }
       return memo
      end
    end 

end


