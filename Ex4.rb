class Keys_to_sym
  def initialize
    @hash={'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5=> '234', :yesss => :fg, try: {'yesterday12'=> 34, 'yesteryear2' => 2014}, key: [{'yes2' => 23, 'b2' => 'travel'}], 'yesterday1' => 34, 'yesteryear' => 2014}
@new_hash={}
  end

  def keys_to_sym (hash=@hash)
    
    hash.each do |key, value|
			puts key
			if key.is_a? String
			  @new_hash[key.to_sym]=value
				puts "String"
		        elsif ((value.is_a? Hash) && !(key.is_a? String))
				 keys_to_sym value
				
			  
				puts "Hash"
			elsif ((value.is_a? Array) && !(key.is_a? String))
				
			  keys_to_sym value[0]

		          
				
				
				puts "Array"
				
			  
			else
			  @new_hash[key]=value
				puts "Other"
			end
    end
	@new_hash
  end

end
