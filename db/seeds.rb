# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create(name: 'Aloe Vera', image_url: 'aloe-vera.jpg')
Plant.create(name: 'Catcus', image_url: 'catcus.jpg')
Plant.create(name: 'Chamaedorea', image_url: 'aloe-vera.jpg')
Plant.create(name: 'Cheese Plant', image_url: 'cheese-plant.jpg')
Plant.create(name: 'Devils Ivy', image_url: 'devils-ivy.jpg')
Plant.create(name: 'Dieffenbachia', image_url: 'dieffenbachia.jpg')
Plant.create(name: 'Dracaena Fragancia', image_url: 'aloe-vera.jpg')
Plant.create(name: 'Fern', image_url: 'fern.jpg')
Plant.create(name: 'Ficus Benjamina', image_url: 'ficus-benjamina.jpg')
Plant.create(name: 'Ficus Lyrata Vertakt', image_url: 'ficus-lyrata-vertakt.jpg')
Plant.create(name: 'Golden Pothos', image_url: 'golden-pothos.jpg')
Plant.create(name: 'Kentia Palm', image_url: 'kentia-palm.jpg')
Plant.create(name: 'Lemon Tree', image_url: 'lemon-tree.jpg')
Plant.create(name: 'Maidenhair Fern', image_url: 'maidenhair-fern.jpg')
Plant.create(name: 'Snake Plant', image_url: 'snake-plant.jpg')
Plant.create(name: 'Rubber Plant', image_url: 'rubber-plant.jpg')
Plant.create(name: 'Zamioculcas', image_url: 'zamioculcas.jpg')
Plant.create(name: 'Monstera Deliciosa', image_url: 'monstera-deliciosa.jpg')
Plant.create(name: 'Tradescantia Sitara', image_url: 'tradescantia-sitara.jpg')
Plant.create(name: 'Ruby Tradescantia', image_url: 'tradescantia-sitara-purple.jpg')
Plant.create(name: 'Schefflera', image_url: 'schefflera.jpg')
Plant.create(name: 'Sansevieria Mikado', image_url: 'sansevieria-mikado.jpg')



Query.create(question: "why is my plant dying", plant_id:"1", user_id:"1")
Query.create(question: "What soild do I need?", plant_id:"1", user_id:"1")
Query.create(question: "How much sunlight does it need", plant_id:"1", user_id:"1")
