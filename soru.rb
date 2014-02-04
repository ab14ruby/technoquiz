require './kategori'
class Sorular
	def initialize(kategori)
		@@secililer = {} unless @@secililer
		@@secililer[kategori] = {dy: [], test: [], bosluk: []} unless @@secililer[kategori]
	end
end
