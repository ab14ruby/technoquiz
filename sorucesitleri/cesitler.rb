module SoruCesitleri
	module Fonksiyonlar
		def veriler (veriler)
			buffer = []
			veriler.each do |anahtar, deger|
				buffer << hazirla(anahtar) + '=>' + hazirla(deger.to_s)
			end
			buffer.join('||')
		end

		def hazirla (veri)
			veri.to_s.tr('=>', '=\>').tr('||', '|\|')
		end

		def kurtar (veri)
			veri.tr('=\>', '=>').tr('|\|', '||')
		end
	end
end