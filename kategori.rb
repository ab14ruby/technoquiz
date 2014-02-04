class Kategori
	def self.liste
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
		Dir.foreach("sorular") do |k|
			kategori << k.to_s unless k == '.' || k == '..'
		end
		kategori.sort
	end

end