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
          sum = start + (eval copy.join method)
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

  # def new_inject(*args, &block) 
  #   copy = self.dup
  #   while copy.length > 0 
  #     if copy.length == self.length
  #       x = copy.shift
  #       p "I am x:#{x}"
  #       y = copy.shift
  #       p "I am y:#{y}"
  #     else
  #       y = copy.shift
  #       p "I am y shift: #{y}"
  #     end
  #     x = yield(x,y) if block_given?
  #     p "I am x final: #{x}"
  #   end
  #   x
  # end


# def new_inject


# end


end


