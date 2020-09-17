# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PersonBook.destroy_all 
Person.destroy_all
Book.destroy_all

book1 = Book.create title: "Stuart Little", genre: "Childrens"
book2 = Book.create title: "Lord of the Rings", genre: "Fantasy"
book3 = Book.create title: "To Kill A MockingBird", genre: "Drama"
book4 = Book.create title: "It", genre: "Horror"

person1 = Person.create name: "joe", age: 19
person2 = Person.create name: "jane", age: 59
person3 = Person.create name: "Page", age: 9
person4 = Person.create name: "George", age: 31

PersonBook.create book: book1, person: person1
PersonBook.create book: book2, person: person2
PersonBook.create book: book3, person: person3
PersonBook.create book: book4, person: person4
PersonBook.create book: book2, person: person1
PersonBook.create book: book1, person: person2