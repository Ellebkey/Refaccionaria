# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


accs = Categprod.create! :tipe => "Accesorios"
misc = Categprod.create! :tipe => "Miscelaneos"
susp = Categprod.create! :tipe => "Suspensiones"
acet = Categprod.create! :tipe => "Aceites y lubricantes"
fil = Categprod.create! :tipe => "Filtros"
mot = Categprod.create! :tipe => "Parte de Motor"
sist = Categprod.create! :tipe => "Sistema de Enfriamento"
mag = Categprod.create! :tipe => "Mangueras"
band = Categprod.create! :tipe => "Bandas"
bat = Categprod.create! :tipe => "Baterias"

Product.create! :name => "Filtro Aceite", :clave => "GP-149", :description =>"Nissan Camioneta", :stock => 15, :avaible => 1 ,:pricepublic => 50.00, :pricedesc => 45.00, :pricemaxd => 45.00, :categprod => misc
Product.create! :name => "Foco Stop", :clave => "1034", :description =>"Universal", :stock => 25, :avaible => 1 ,:pricepublic => 5.00, :pricedesc => 0.00, :pricemaxd => 0.00, :categprod => accs
Product.create! :name => "Filtro Aire", :clave => "GAWV-2", :description =>"VW Sedan", :stock => 50, :avaible => 1 ,:pricepublic =>50.00, :pricedesc => 0.00, :pricemaxd => 0.00, :categprod => fil
Product.create! :name => "Balata Delantera", :clave => "M-7396-Z", :description =>"Tsuru III", :stock => 2, :avaible => 1 ,:pricepublic =>175.00 , :pricedesc => 0.00, :pricemaxd => 0.00, :categprod => misc
Product.create! :name => "Balata Trasera", :clave => "J1N4-1438", :description =>"Tsuru III", :stock => 10, :avaible => 1 ,:pricepublic => 215.59, :pricedesc => 0.00, :pricemaxd => 0.00, :categprod => misc
Product.create! :name => "Radiador", :clave => "RC-562", :description =>"Tsuru III", :stock => 0 , :avaible => 0 ,:pricepublic =>  1289.63, :pricedesc =>0.00, :pricemaxd => 0.00, :categprod => sist
Product.create! :name => "Kit Embrague", :clave => "5897415", :description =>"Tsuru III", :stock => 17, :avaible => 1 ,:pricepublic => 900.12, :pricedesc => 0.00, :pricemaxd => 0.00, :categprod => misc
Product.create! :name => "Anticongelante 1 lt", :clave => "13011", :description =>"Todos los carros", :stock => 50, :avaible => 1 ,:pricepublic => 45.00, :pricedesc => 0.00, :pricemaxd => 0.00, :categprod => acet
Product.create! :name => "Anticongelante 5 lt", :clave => "13011-1", :description =>"Todos los carros", :stock => 97, :avaible => 1 ,:pricepublic => 165.89, :pricedesc => 0.00, :pricemaxd => 0.00, :categprod => acet

Client.create! :name =>"Operadora Tangolunda", :address => "Boulevard Benito Juarez s/n ,Bahias de Huatulco ,Oaxaca", :rfc => "RFT123R45" , :email =>"operadora@tangolunda.com", :discount => 0
Client.create! :name => "Transportes del Itsmo", :address => "Calle Rio Medo Numero 15 ,Juchita, Oaxaca", :rfc => "GSGR588E", :email => "transportes@itsmo.com", :discount => 1
Client.create! :name => "Aeropuerto Int. Hux", :address => "Carretera Fed No.42 s/n Bahias de Huatulco,Oaxaca", :rfc => "WREC124DF", :email => "airport@hux.com", :discount => 1

Provider.create! :name =>"Refacciones Automotrices Alfa", :address => "Alcatraces No. 808 Col Tulipanes", :city => "Saltillo", :state => "Coahuila",:rfc => "REWG234D"
Provider.create! :name =>"Refaccionaria del Valle", :address => "Cocotitlan 89 Col Cumbria", :city => "Toluca" , :state => "Edo. Mexico",:rfc => "QWEF345TG" 
Provider.create! :name =>"Refacciones Diesel", :address => "Corregidora Sur #208 Col Vista Alegre", :city => "Queretaro", :state => "Queretaro",:rfc => "WQRGR35R"

