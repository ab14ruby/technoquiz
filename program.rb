require "./soru"
require "./puan"

class Program
	def initialize
		puts "Hoşgeldiniz. Listeden Kategori Seçiniz: "

		Kategori.liste

		secim = gets.chomp.to_i

		puan = Puan.new

		10.times do
			soru = Soru.getir(secim)

			soru.yazdir

			if soru.kontrol
				puts 'Doğru Cevap Tebrikler'

				puan.ekle(soru.puan)
			else
				puts 'Yanlış Cevap'
			end
		end

		puan.al

		puts 'Adınızı Girin'
		puan.yazdir(gets.chomp)

		puts puan.liste
	end
end

Program.new