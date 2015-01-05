class Array

  def new_inject(arg=nil, symbol=nil, &block)
    return new_inject(&arg) if arg.is_a? Symbol
    return new_inject(arg, &symbol) if symbol
    arg ? memo = arg : memo = self.shift
    self.each { |item| memo = yield memo, item }
    return memo
  end
  
end


#   def new_inject(*args, &block)
#       copy = self.dup
      
#       if args[0].is_a? Symbol
#         method = args.shift.to_s
#         sum = eval copy.join method
#       elsif args[0].is_a? Integer 
#         if block_given?
#           sum = args[0]
#           while copy.length > 0
#             next_item = copy.shift
#             sum = yield(sum, next_item) 
#           end
#         else 
#           start = args.shift
#           method = args.shift.to_s
#           copy.insert(0,start)
#           sum =  (eval copy.join method)
#         end
#       else args == nil
#         if block_given?
#           first_item = copy.shift
#           second_item = copy.shift
#           sum = yield(first_item, second_item)   
#             while copy.length > 0
#               next_item = copy.shift
#               sum = yield(sum, next_item) 
#             end
#         end
#       end
      
#     sum
#   end

# end


