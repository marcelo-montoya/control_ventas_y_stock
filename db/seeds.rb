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

    Product.create(nombre: Faker::CryptoCoin.coin_name, precio: "#{990 * i}", descripcion: Faker::Lorem.sentences(number: 1), cantidad: rand(1..25))

end

50.times do |i|

    Order.create(monto: "#{1}", fechaorden: Time.now.strftime("%d-%m-%Y %H:%M"), costumer_id: rand(1..50), product_id: rand(1..50))

end

50.times do |i|
    if i % rand(1..20) == 1

        Tipopago.create(nombre: "Efectivo", order_id: rand(1..50))

    elsif i % rand(1..20) == 0

        Tipopago.create(nombre: "Debito", order_id: rand(1..50))

    else

        Tipopago.create(nombre: "Credito", order_id: rand(1..50))

    end
end

# El mismo bloque, pero con while

# i = 0 

# while i < 50

#     if i % rand(1..20) == 1

#         Tipopago.create(nombre: "Efectivo", order_id: rand(1..50))

#     elsif i % rand(1..20) == 0

#         Tipopago.create(nombre: "Debito", order_id: rand(1..50))

#     else

#         Tipopago.create(nombre: "Credito", order_id: rand(1..50))

#     end
#     i += 1
#  end

50.times do |i|

    if i % rand(1..20) == 1

        Tipocliente.create(nombre: "Minorista", costumer_id: rand(1..50))
    
    else
        Tipocliente.create(nombre: "Mayorista", costumer_id: rand(1..50))
    end
    
end
