# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

50.times do |i|

    Costumer.create(nombre: Faker::Movies::HarryPotter.character, email: "usuario#{1}@.correo.com")

end
50.times do |i|

    Product.create(nombre: Faker::CryptoCoin.coin_name, precio: "#{990 * i}")

end

50.times do |i|

    Order.create(monto: "#{1}", fechaorden: Time.now.strftime("%d-%m-%Y %H:%M"))

end

50.times do |i|

    Tipopago.create(nombre: "Efectivo")

end

50.times do |i|

    Tipocliente.create(nombre: "Minotista")

end