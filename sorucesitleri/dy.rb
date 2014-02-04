require './cesitler'

module SoruCesitleri

	class DY

		include SoruCesitleri::Fonksiyonlar

		attr_reader :sure, :puan

		def initialize(satir)
			v = Hash[satir.split('||').map{ |veri| veri.split('=>')}]

			@soru = kurtar v["Soru"]
			@cevap = kurtar v["Cevap"]
			@puan = kurtar v["Puan"]
			@sure = kurtar v["Sure"]
		end


		def yazdir()
		 	puts @soru + " (D/Y)"
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

		 	File.open('../sorular/' + kategori + '/dy', 'a') do |dosya|
				dosya.puts(veriler({'Soru' => soru, 'Cevap' => cevap, "Sure"=>sure, "Puan"=>puan}))
			end

	end

end
