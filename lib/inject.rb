class Array 

# # can add numbers together
  def new_inject(*args, &block)
      copy = self.dup
      
      if args[0].is_a? Symbol
        method = args.shift.to_s
        sum = eval copy.join method
      elsif args[0].is_a? Integer 
        if block_given?
          sum = args[0]
          while copy.length > 0
            next_item = copy.shift
            sum = yield(sum, next_item) if block_given?
          end
        else 
          start = args.shift
          method = args.shift.to_s
          array = copy.insert(0,start)
          sum =  (eval copy.join method)
        end
      else args == nil
        first_item = copy.shift
        second_item = copy.shift
        sum = yield(first_item, second_item) if block_given?  
        while copy.length > 0
          next_item = copy.shift
          sum = yield(sum, next_item) if block_given?
        end
      end
    sum
end

end


