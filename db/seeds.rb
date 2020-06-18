# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#####USERS##########
alex = User.create(username: "alexg123", password: "boogers")
zoe = User.create(username: "zoepups", password: "password")
nick = User.create(username: "nick19", password: "alsoboogers")

########DOGS########
dottie = Dog.create(name: "Dottie", breed: "Cattle Dog mix", size: "medium", about: "A little neurotic but the sweetest ever!", img_url: "https://kymkemp.com/wp-content/uploads/2018/10/get_image-1-3.jpg")
belle = Dog.create(name: "Belle", breed: "Yorkie", size: "small", about: "Cuddlemuffin!", img_url: "https://kymkemp.com/wp-content/uploads/2018/10/get_image-1-3.jpg")
frank = Dog.create(name: "Frank", breed: "Chocolate Lab", size: "medium", about: "Playful and kind!", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSVhgtmXXG3yifndvf9WD-0hqOBr1hQplYNxKrCcUrnC_iPvTEE&usqp=CAU")

#########Match#############
match1 = Match.create(user_id: alex.id, dog_id: dottie.id)
match2 = Match.create(user_id: zoe.id, dog_id: belle.id)

########Session########
appointment1 = Appointment.create(description: "Day in the park", match_id: match1.id, appointment_datetime: DateTime.new(2019, 07, 24, 15, 00, 0))
appointment2 = Appointment.create(description: "Companionship", match_id: match2.id, appointment_datetime: DateTime.new(2020, 04, 15, 18, 00, 0))
appointment3 = Appointment.create(description: "Hanging on the couch", match_id: match1.id, appointment_datetime: DateTime.new(2020, 05, 06, 18, 00, 0))

######Review########
first_review = Review.create(match_id: match1.id, dog_review: "Great dog!", dog_rating: 5)
second_review = Review.create(match_id: match2.id, dog_review: "Very well behaved!", dog_rating: 4)

