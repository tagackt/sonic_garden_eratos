class Eratos
  def self.getContainPrimeNumber number
    search_number_list = []
    prime_number_list = []
    number_sqrt = Math.sqrt(number)
    #探索リストに2からxまでの整数を昇順で入れる。
    (2..number).each {|num| search_number_list << num }

    search_number_list.each do |num|
    #探索リストの先頭の数を素数リストに移動し、その倍数を探索リストから篩い落とす。
      prime_number = search_number_list.shift
      prime_number_list << prime_number
      search_number_list.delete_if { |num| num % prime_number == 0}
      #上記の篩い落とし操作を探索リストの先頭値がxの平方根に達するまで行う。
      if search_number_list[0] == number_sqrt
      break
      end
    end

    #探索リストに残った数を素数リストに移動して処理終了。
    prime_number_list << search_number_list

    puts prime_number_list
  end
end

Eratos.getContainPrimeNumber(30)
