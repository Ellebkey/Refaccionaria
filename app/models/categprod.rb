class Categprod < ActiveRecord::Base
	has_many :products

	#se define el string que se va a mostrar
	def to_s
  		"#{tipe}"
  	end
end
