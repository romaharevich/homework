class Hash_search
  def initialize
    @hash =  {'yes' => 23, 'b' => 'travel','yesterday' => 34, 5 => '234', :yesss => :fg, :try => 30, :key=> 'some value', 'yesterday1' => 34, 'yesteryear'=> 2014}
  end

  def search_hash
    count = 0
    @hash.each do |key, val|
      count+=1 if 'yes' == key.to_s.slice(0,3)
      
    end
    puts "Count of the keys: #{count}"
  end

end
