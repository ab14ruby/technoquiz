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

  def al
    puts 'Aldığınız puan: ' + @durum.to_s
  end

  def yazdir(kullanici = "Anonymous")
    File.open("puanlar","a") do |dosya|
      dosya.puts @durum.to_s + ' -> ' + kullanici
    end
  end

end