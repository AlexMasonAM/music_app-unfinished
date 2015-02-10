Band.destroy_all
Genre.destroy_all
Album.destroy_all
Song.destroy_all

#create two new bands
the_national = Band.create(name: "The National")
andrew_bird = Band.create(name: "Andrew Bird")

#create a new genre
rock = Genre.create(name: "rock")

#create two new albums, one belonging to each of the two bands above
boxer = Album.create(name: "Boxer", year_released: 2007, running_time: "43 minutes", band: the_national, genre: rock)
break_it = Album.create(name: "Break It Yourself", year_released: 2012, running_time: "1 hour", band: andrew_bird, genre: rock)

#create new songs belonging to the two new albums and bands above
Song.create(name: "Fake Empire", running_time: "3:25", track: 1, album: boxer, band: the_national)
Song.create(name: "Mistaken for Strangers", running_time: "3:31", track: 2, album: boxer, band: the_national)
Song.create(name: "Brainy", running_time: "3:18", track: 3, album: boxer, band: the_national)
Song.create(name: "Squalor Victoria", running_time: "2:59", track: 4, album: boxer, band: the_national)
Song.create(name: "Green Gloves", running_time: "3:39", track: 5, album: boxer, band: the_national)

Song.create(name: "Desperation Breeds...", running_time: "5:30", track: 1, album: break_it, band: andrew_bird)
Song.create(name: "Polynation", running_time: "0:45", track: 2, album: break_it, band: andrew_bird)
Song.create(name: "Danse Caribe", running_time: "5:19", track: 3, album: break_it, band: andrew_bird)
Song.create(name: "Give it Away", running_time: "4:31", track: 4, album: break_it, band: andrew_bird)
Song.create(name: "Eyeoneye", running_time: "4:07", track: 5, album: break_it, band: andrew_bird)