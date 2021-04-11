class FibGenerator
   def initialize(n)
     @n = n		
   end	
 
   def each
     a, b = 1, 1
     @n.times do
       yield a
       a, b = b, a+b
     end
   end
 
   include Enumerable
 end
 
 def fibs(n)
   FibGenerator.new(n)
 end

 #use like this
 fibs(6).each do |x|
   puts x
 end
