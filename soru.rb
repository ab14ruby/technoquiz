require './kategori'
require './sorucesitleri/bosluk'
require './sorucesitleri/dy'
require './sorucesitleri/test'

class Soru
	@@secililer ||= {dy: [], test: [], bosluk: []}

	def self.getir(kategori)
		turler = [:bosluk, :dy, :test]
		
		rastgele=rand(0..2)
		
		@tur = turler[rastgele]
		@tum = []

		yol = 'sorular/' + Kategori.sec(kategori) + '/' + @tur.to_s
		File.open(yol) do |dosya|
			dosya.each { |satir| @tum << satir.chomp }
		end
		@tum.compact!
		
		soru_cesit()
	end

	private
	def self.sec
		rastgele = rand(0...@tum.size)
		
		while @@secililer[@tur].include? rastgele
			rastgele = rand(0...@tum.size)
		end

		@@secililer[@tur] << rastgele

		@tum[rastgele]
	end

	def self.soru_cesit
		if @tur == :bosluk
			SoruCesitleri::Bosluk.new (sec())
		elsif @tur == :dy
			SoruCesitleri::DY.new (sec())
		elsif @tur == :test
			SoruCesitleri::Test.new (sec())
		end
	end
end