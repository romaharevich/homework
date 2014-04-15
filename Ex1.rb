class Double_array

  def initialize (cols, rows)

    @a = Array.new(cols){Array.new(rows){-10+rand(20)}}

  end

  def negative
    count = 0
    sum = 0
    @a.flatten.each do |i|
      if i<0 
        sum +=i
        count = count.next
      end
    end
    puts "Сумма отрицательных значений: #{sum}"
    puts "Кол-во отрицательных елементов: #{count}"
  end

end
