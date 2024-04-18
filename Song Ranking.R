
# From   kaggle.com
# Context
# Why do we like some songs more than others? Is there something about a song that
# pleases our subconscious, making us listening to it on repeat? To understand this
# Nicolas Carbone collected various attributes from a selection of songs available
# in the Spotify's playlist "All out ..s" starting from the 50s up to the newly
# ended 10s. Can you find the secret sauce to make a song popular?

# Data glossary:
#
# top.genre:  genre of the song
# year:  year of the song (due to re-releases year might not correspond to 
#release year of original song)
# bpm(beats per minute):   beats per minute
# nrgy(energy):   energy of a song, the higher the value the more energetic the 
#song is
# dnce(danceability):   the higher the value, the easier it is to dance to this 
#song.
# dB(loudness):   the higher the value, the louder the song.
# live(liveness):   the higher the value, the more likely the song is a live 
#recording.
# val(valence):    the higher the value, the more positive mood for the song.
# dur(duration):    the duration of the song.
# acous(acousticness):   the higher the value the more acoustic the song is.
# spch(speechiness):    the higher the value the more spoken word the song contains.
# pop(popularity):    the higher the value the more popular the song is.

spotify2010.data <- 
  read.table("http://mkahn.webspace.wheatoncollege.edu/math251/Datasets/2010-spotify.txt",
             header=TRUE, sep="\t", stringsAsFactors = TRUE)
spotify2010.data <- 
  read.csv2("http://mkahn.webspace.wheatoncollege.edu/math251/Datasets/2010-spotify.csv",
            header=TRUE, sep=",", stringsAsFactors = TRUE)
attach(spotify2010.data)

plot(dnce, pop,
     xlab = "Dance" , ylab = "Popularity",
     pch = 20 , col = "red")

lines(lowess(dnce,pop), col = "blue", lwd = 2.5)

table(top.genre)
summary(pop)
plot(pop ~ year)

