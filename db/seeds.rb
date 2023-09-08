p "destroy bookings users and cars"
User.destroy_all
Car.destroy_all
Booking.destroy_all
p "all done"

User.create(email: "leslie@leslie.com", password: "123456")
p "user created"

Car.create(brand: "Aston Martin", price: 250, address: "Marseille")
Car.create(brand: "Ferrari", price: 300, address: "Paris")
Car.create(brand: "Lamborghini", price: 350, address: "Lyon")
Car.create(brand: "Porsche", price: 400, address: "Bordeaux")
p "cars created"
