class Puan

	def initialize()
		@durum = 0
	end


  def ekle(puan)
    @durum += puan.to_i
  end


	def liste
    puanlar = []

    File.open("puanlar","r") do |puan|
      puan.each_line { |puan| puanlar << puan}
    end
    puanlar.sort.reverse
  end


  def yazdir(kullanıcı = "Anonymous")
    File.open("puanlar","a") do |dosya|
      dosya.puts "#{@durum} -> #{kullanıcı}"
    end
  end

end