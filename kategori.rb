class Kategori
	def kategoriler
		i = 1
		kat().each do |k|
			puts i.to_s + ') ' + k.to_s
			i += 1
		end
	end

	def self.sec(secim)
		secim -= 1
		kat()[secim]
	end

	private

	def self.kat 
		kategori=[]
		Dir.glob("sorular/*") do |k|
			kategori << k.to_s
		end
		kategori.sort
	end

	def kat
		Kategori.kat
	end
end