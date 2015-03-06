# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# 20.times do
#   random_size = Random.rand(300)+300
#   Product.create name: Faker::Lorem.words(Random.rand(3) + 1).join(' ').titleize,
#   description: Faker::Lorem.paragraphs(3, true).join(' '),
#   photo: "http://placecreature.com/#{random_size}/#{random_size}",
#   comunne_id: 

# end




comunne = [
  
['Cerrillos '], ['Cerro Navia '], ['Conchalí '], ['El Bosque '], ['Estación Central '], ['Huechuraba '], ['Independencia '], ['La Cisterna '], ['La Florida '], ['La Pintana '], ['La Granja '], ['Padre Hurtado '], ['Pirque '], ['La Reina '], ['Las Condes '], ['Lo Barnechea '], ['Lo Espejo '], ['Lo Prado '], ['Macul '], ['Maipú '], ['Ñuñoa '], ['Pedro Aguirre Cerda '], ['Peñalolén '], ['Providencia '], ['Pudahuel'], ['Quilicura'], ['Quinta Normal'], ['Recoleta'], ['Renca'], ['San Miguel'], ['San Joaquín'], ['San Ramón'], ['Santiago'], ['Vitacura'], ['San Bernardo '], ['San José de Maipo'], ['Puente Alto'] 

]
comunne.map{|b| Comunne.create(name: b.first)} 

Timeservice.delete_all

timeservice = [
['20 min'], ['25 min'], ['30 min'], ['35 min'], ['40 min'], ['45 min'], ['50 min'], ['55 min'], ['60 min'], ['1 hora'], ['1 hora y 10 min'], ['1 hora y 20 min'], ['1 hora y 30 min'], ['1 hora y 40 min'], ['1 hora y 50 min'], ['2 horas'], ['2 horas y 10 min'], ['2 horas y 20 min'], ['2 horas y 30 min'], ['2 horas y 40 min'], ['2 horas y 50 min'], ['3 horas'], ['3 horas y 10 min'], ['3 horas y 20 min'], ['3 horas y 30 min'], ['3 horas y 40 min'], ['3 horas y 50 min'], ['4 horas'], ['4 horas y 10 min'], ['4 horas y 20 min'], ['4 horas y 30 min'], ['4 horas y 40 min'], ['4 horas y 50 min'], ['5 horas'], ['5 horas y 10 min'], ['5 horas y 20 min'], ['5 horas y 30 min'], ['5 horas y 40 min'], ['5 horas y 50 min'], ['6 horas'], ['7 horas'], ['8 horas'], ['9 horas'], 

]
timeservice.map{|b| Timeservice.create(name: b.first)} 

maxcapacity = [

['1 niño'], ['2 niños'], ['3 niños'], ['4 niños'], ['5 niños'], ['6 niños'], ['7 niños'], ['8 niños'], ['9 niños'], ['10 niños'], ['11 niños'], ['12 niños'], ['13 niños'], ['14 niños'], ['15 niños'], ['16 niños'], ['17 niños'], ['18 niños'], ['19 niños'], ['20 niños'], ['21 niños'], ['22 niños'], ['23 niños'], ['24 niños'], ['25 niños'], ['26 niños'], ['27 niños'], ['28 niños'], ['29 niños'], ['30 niños'], ['31 niños'], ['32 niños'], 
['33 niños'], ['34 niños'], ['35 niños'], ['36 niños'], ['37 niños'], ['38 niños'], ['39 niños'], ['40 niños'], ['41 niños'], ['42 niños'], ['43 niños'], ['44 niños'], ['45 niños'], ['46 niños'], ['47 niños'], ['48 niños'], ['49 niños'], ['50 niños'], ['51 niños'], ['52 niños'], ['53 niños'], ['54 niños'], ['55 niños'], ['56 niños'], ['57 niños'], ['58 niños'], ['59 niños'], ['60 niños'], ['61 niños'], ['62 niños'], ['63 niños'], ['64 niños'], 
['65 niños'], ['66 niños'], ['67 niños'], ['68 niños'], ['69 niños'], ['70 niños'], ['71 niños'], ['72 niños'], ['73 niños'], ['74 niños'], ['75 niños'], ['76 niños'], ['77 niños'], ['78 niños'], ['79 niños'], ['80 niños'], ['81 niños'], ['82 niños'], ['83 niños'], ['84 niños'], ['85 niños'], ['86 niños'], ['87 niños'], ['88 niños'], ['89 niños'], ['90 niños'], ['91 niños'], ['92 niños'], ['93 niños'], ['94 niños'], ['95 niños'], ['96 niños'], 
['97 niños'], ['98 niños'], ['99 niños'], ['100 niños'], 

]

maxcapacity.map{|b| Maxcapacity.create(name: b.first)} 

category = [

['Arriendos'], ['Animaciones'], ['Show'], ['Actividades'], ['Comida'], ['Decoración'] 

]

category.map{|b| Category.create(name: b.first)} 

agerange = [

['Menos de 1 año'], ['1 año'], ['2 años'], ['3 años'], ['4 años'], ['5 años'], ['6 años'], ['7 años'], ['8 años'], ['9 años'], ['10 años'], ['11 años'], ['12 años'], 

]

agerange.map{|b| Agerange.create(name: b.first)} 
