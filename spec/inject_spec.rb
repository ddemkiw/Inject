require 'inject'

describe Array do
 
 context 'with a block' do

    it 'can add numbers together' do 
      expect([1,2,3,4].inject{|memo,item| memo+item}).to eq(10)
      expect([1,2,3,4].new_inject{|memo, item| memo + item}).to eq(10)
      expect([3,5,8,9].new_inject{|memo, item| memo + item}).to eq(25)
    end

    it 'can minus numbers' do
      expect([1,2,3,4].inject{|memo,item| memo-item}).to eq(-8)
      expect([1,2,3,4].new_inject {|memo, item| memo - item}).to eq(-8)
    end
    
    it 'can multiply numbers' do
      expect([1,2,3,4].inject{|memo,item| memo*item}).to eq(24)
      expect([1,2,3,4].new_inject{|memo,item| memo*item}).to eq(24)
    end

   end

    context 'with a symbol' do

      it 'can add numbers together using a symbol' do
        expect([1,2,3,4].inject(:+)).to eq(10)
        expect([1,2,3,4].new_inject(:+)).to eq(10)
      end

      it 'can subtract numbers from each other using a symbol' do
        expect([1,2,3,4].inject(:-)).to eq(-8)
        expect([1,2,3,4].new_inject(:-)).to eq(-8)
     end
     
      it 'can multiply numbers' do
      expect([1,2,3,4].inject(:*)).to eq(24)
      expect([1,2,3,4].new_inject(:*)).to eq(24)
      end

  end  

    context 'with an argument and a block' do
    
      it 'it can add with a starting point and a block' do
        expect([1,2,3,4].inject(10) {|memo, item| memo + item}).to eq(20)
        expect([1,2,3,4].new_inject(10) {|memo, item| memo + item}).to eq(20)
      end

      it 'it can subtract with a starting point and a block' do
        expect([1,2,3,4].inject(10) {|memo, item| memo - item}).to eq(0)
        expect([1,2,3,4].new_inject(10) {|memo, item| memo - item}).to eq(0)
      end
   
      it 'it can multiply with a starting point and a block' do
        expect([1,2,3,4].inject(10) {|memo, item| memo * item}).to eq(240)
        expect([1,2,3,4].new_inject(10) {|memo, item| memo * item}).to eq(240)
      end

    end

    context 'with a symbol argument' do

      it 'can add with a starting point and a symbol' do
        expect([1,2,3,4].inject(10, :+)).to eq(20)
        expect([1,2,3,4].new_inject(10, :+)).to eq(20)
      end

      it 'can subtract with a starting point and a symbol' do
        expect([1,2,3,4].inject(10, :-)).to eq(0)
        expect([1,2,3,4].new_inject(10, :-)).to eq(0)
      end

      it 'can subtract with a starting point and a symbol' do
        expect([1,2,3,4].inject(10, :*)).to eq(240)
        expect([1,2,3,4].new_inject(10, :*)).to eq(240)
      end

    end
  

end