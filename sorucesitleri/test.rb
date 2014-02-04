module SoruCesitleri

	class Test

		attr_reader :sure, :puan

		def initialize(satir)
			v = Hash[satir.split('||').map{ |degisken| degisken.split('=>') }]

			@soru = v["Soru"]
			@cevap = v["Cevap"]
			@siklar = ['A) ' + v["A"], 'B) ' + v["B"], 'C) ' + v["C"], 'D) ' + v["D"]]
			@sure = v["Sure"]
			@puan = v["Puan"]
		end

		def yazdir()
			puts @soru
			@siklar.each { |sik| puts ' ' + sik}
		end

		def kontrol()
			print "Cevabiniz: "
			girilen_cevap = gets.chomp
			girilen_cevap == @cevap
		end
    end
end