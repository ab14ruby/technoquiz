class Sorular
	def initialize(kategori)
		@@seciller = {} unless @@secililer
		@@secililer[kategori] = {dy: [], test: [], bosluk: []} unless @@secililer[kategori]
	end
end
class Kategori
	def initialize
		Dir.chdir("/home/ali/technoquiz/technoquiz/sorular")
	end

	def kategoriler
		i = 1
		Dir.glob("*") do |tur|
			puts i.to_s + ') ' + tur.to_s
			i += 1
		end
	end
end
Kategori.new.kategoriler