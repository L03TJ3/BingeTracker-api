
got = File.open(File.join(Rails.root, 'spec/support/test_images/images/got.jpg'))

BingeSerie.create(
  title: "Game of Thrones",
  description: "lorem ipsum",
  image: got
)

BingeEpisode.create(
  name: "The Rains of Castamere",
  description: "lorem ipsum",
  season: 3,
  binge_serie_id: 1
)
BingeEpisode.create(
  name: "Lorem",
  description: "lorem ipsum",
  season: 1,
  binge_serie_id: 1
)
BingeEpisode.create(
  name: "Ipsum",
  description: "lorem ipsum",
  season: 3,
  binge_serie_id: 1
)
