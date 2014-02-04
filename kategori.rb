class Kategori
	def initialize
		Dir.chdir("./sorular")
	end

	def kategoriler
		i = 1
		kat().each do |k|
			puts i.to_s + ') ' + k.to_s
			i += 1
		end
	end

	def sec(secim)
		secim -= 1
		kat()[secim]
	end

	private

	def kat
		kategori=[]
		Dir.glob("*") do |k|
			kategori << k.to_s
		end
		kategori.sort
	end
end