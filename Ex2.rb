class Array_Two

  def initialize count
    

    @a = Array.new(count){rand((Time.now - 60*60*24*365)..Time.now).to_s.slice(5,5)<<"   "<<(-20+rand(60)).to_s}
    @b = {}

  end

  def average
    
   
      12.times do |month|
	buff = 0.0
	count = 0
        @a.each do |val|
          if val.to_s.slice(0,2).to_i == month+1 
            buff += val.to_s.slice(-3,3).to_i
	    count += 1
          end
        end

	@b[month+1] = "month: " << (buff / count).to_s unless count == 0
      end
 puts @b
  end
end
