# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all
Review.destroy_all

beyonce = Artist.create(:name => "Beyonce", :dob => "1981-09-04")
tswift = Artist.create(name: "Taylor Swift", dob: "1989-12-13")
kanye = Artist.create(name: "Kanye", dob: "1977-06-08")

b1 = Song.create(title: "Crazy in Love", price: 0.99, artist_id: beyonce.id)
b2 = Song.create(title: "Single Ladies", price: 1.29, artist_id: beyonce.id)
b3 = Song.create(title: "Formation", price: 1.99, artist_id: beyonce.id)
t1 = Song.create(title: "Shake It Off", price: 1.29, artist_id: tswift.id)
t2 = Song.create(title: "Love Story", price: 1.29, artist_id: tswift.id)
t3 = Song.create(title: "You Belong With Me", price: 1.29, artist_id: tswift.id)
k1 = Song.create(title: "Gold Digger", price: 0.29, artist_id: kanye.id)
k2 = Song.create(title: "Love Lockdown", price: 0, artist_id: kanye.id)
k3 = Song.create(title: "Stronger", price: 0.29, artist_id: kanye.id)

Review.create(rating: 5, song_id: b1.id)
Review.create(rating: 4, song_id: b1.id)
Review.create(rating: 5, song_id: b2.id)
Review.create(rating: 5, song_id: b3.id)
Review.create(rating: 5, song_id: b3.id)
Review.create(rating: 5, song_id: b3.id)
Review.create(rating: 4, song_id: t1.id)
Review.create(rating: 4, song_id: t2.id)
Review.create(rating: 5, song_id: t2.id)
Review.create(rating: 5, song_id: t2.id)
Review.create(rating: 3, song_id: t3.id)
Review.create(rating: 5, song_id: t3.id)
Review.create(rating: 1, song_id: k1.id)
Review.create(rating: 2, song_id: k1.id)
Review.create(rating: 1, song_id: k2.id)
Review.create(rating: 3, song_id: k3.id)
Review.create(rating: 4, song_id: k3.id)
Review.create(rating: 1, song_id: k3.id)
