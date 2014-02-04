require './sorucesitleri/cesitler'

module SoruCesitleri

	class Test

		include SoruCesitleri::Fonksiyonlar

		attr_reader :sure, :puan

		def initialize(satir = '')
			@satir = satir
		end

		def yazdir()
			v = Hash[@satir.split('||').map{ |degisken| degisken.split('=>') }]

			@soru = kurtar v["Soru"]
			@cevap = kurtar v["Cevap"]
			@siklar = ['A) ' + kurtar(v["A"]), 'B) ' + kurtar(v["B"]), 'C) ' + kurtar(v["C"]), 'D) ' + kurtar(v["D"])]
			@sure = kurtar v["Sure"]
			@puan = kurtar v["Puan"]

			puts @soru
			@siklar.each { |sik| puts ' ' + sik}
		end

		def kontrol()
			print "Cevabiniz: "
			girilen_cevap = gets.chomp
			girilen_cevap == @cevap
		end

		def ekleme (kategori)
		 	puts 'Soru giriniz'
		 	soru = hazirla gets.chomp

		 	puts 'Cevap giriniz'
		 	cevap = hazirla gets.chomp

		 	puts 'Sure giriniz'
		 	sure = hazirla gets.chomp

		 	puts 'Puan giriniz'
		 	puan = hazirla gets.chomp

		 	puts "Şıkları Giriniz"
		 	puts "A :"
		 	a=gets.chomp

		 	puts "B :"
		 	b=gets.chomp

		 	puts "C :"
		 	c=gets.chomp

		 	puts "D :"
		 	d=gets.chomp



	 		File.open('sorular/' + kategori + '/test', 'a') do |dosya|
				dosya.puts(veriler({'Soru' => soru, 'Cevap' => cevap, 'A' => a, 'B' => b, 'C' => c, 'D' => d, "Sure"=>sure, "Puan"=>puan}))
			end
		end
    end
end