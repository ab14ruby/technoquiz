module SoruCesitleri
	
	class Bosluk

		attr_reader :sure, :puan
		
		def initialize(satir)
			v=[]
			v << Hash[satir.split('||').map{ |veri| veri.split('=>')}]

			@soru = v["Soru"]
			@cevap = v["Cevap"]
			@puan = v["Puan"]
			@sure = v["Sure"]        
		 end

		 def yazdir()
			puts @soru

		 end

		 def kontrol()

			print "Cevabiniz: "
		       	girilen_cevap = gets.chomp
			girilen_cevap == @cevap
		 end

	end

end