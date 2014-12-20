class Array 

# can add and subtract numbers together
  # def new_inject(*args, &block)
  #     copy = self.dup
  #     memo = copy.shift
  #      x = eval copy.join '+'
  #       yield(memo, x) if block_given? 
  # end


# # can add and multiply numbers together
#   def new_inject(*args, &block)
#       copy = self.dup
#       memo = copy.pop
#        x = eval copy.join '+'
#         yield(memo, x) if block_given? 
#   end
# end

# can add and multiply numbers together
  def new_inject(*args, &block)
      copy = self.dup
      sum = 0
      while copy.length > 0
      x = copy.shift
      y = copy.shift
      sum += yield(x, y) if block_given? 
    end
    sum
    p sum
  end
end
