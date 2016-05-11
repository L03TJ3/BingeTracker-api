
got = File.open(File.join(Rails.root, 'spec/support/test_images/images/got.jpg'))

BingeSerie.create(
  title: "Game of Thrones",
  description: "Game of Thrones roughly follows the storylines set out in A Song
                of Ice and Fire, set in the fictional Seven Kingdoms of Westeros.
                The series chronicles the violent dynastic struggles among the
                realm's noble families for control of the Iron Throne. As the
                series opens, additional threats emerge in the icy North and in
                the eastern continent of Essos.",
  image: got
)

BingeEpisode.create(
  name: "The North Remembers",
  description: "As Robb Stark and his northern army continue the war against the
                Lannisters, Tyrion arrives in King’s Landing to counsel Joffrey
                and temper the young king’s excesses. On the island of Dragonstone,
                Stannis Baratheon plots an invasion to claim his late brother’s
                throne, allying himself with the fiery Melisandre, a strange
                priestess of a stranger god. Across the sea, Daenerys,
                her three young dragons, and the khalasar trek through the
                Red Waste in search of allies, or water. In the North, Bran
                presides over a threadbare Winterfell, while beyond the Wall,
                Jon Snow and the Night’s Watch must shelter with a devious
                wildling.",
  season: 2,
  binge_serie_id: 1,
  episode: 1
)
BingeEpisode.create(
  name: "Winter Is Coming",
  description: "Ned Stark, Lord of Winterfell learns that his mentor, Jon Arryn,
                has died and that King Robert is on his way north to offer Ned Arryn’s
                position as the King’s Hand. Across the Narrow Sea in Pentos,
                Viserys Targaryen plans to wed his sister Daenerys to the nomadic
                Dothraki warrior leader, Khal Drogo to forge an alliance to take
                the throne.",
  season: 1,
  binge_serie_id: 1,
  episode: 1
)
BingeEpisode.create(
  name: "The Night lands",
  description: "In the wake of a bloody purge in the capital, Tyrion chastens
                Cersei for alienating the king’s subjects. On the road north,
                Arya shares a secret with Gendry, a Night’s Watch recruit.
                With supplies dwindling, one of Dany’s scouts returns with news
                of their position. After nine years as a Stark ward,
                Theon Greyjoy reunites with his father Balon, who wants to
                restore the ancient Kingdom of the Iron Islands. Davos enlists
                Salladhor Saan, a pirate, to join forces with Stannis and
                Melisandre for a naval invasion of King’s
                Landing.",
  season: 2,
  binge_serie_id: 1,
  episode: 2
)


banshee = File.open(File.join(Rails.root, 'spec/support/test_images/images/banshee.jpg'))

BingeSerie.create(
  title: "Banshee",
  description: "An unnamed ex-convict assumes the identity of Lucas Hood the
                sheriff of Banshee, Pennsylvania, where he, behind a badge,
                continues his criminal activities, even as he’s hunted by the
                shadowy gangsters he betrayed years earlier.",
  image: banshee
)

BingeEpisode.create(
  name: "Little Fish",
  description: "In the aftermath of their bloody shootout with Rabbit, Lucas,
                Carrie and the Banshee Sheriff's Department are interrogated by
                the FBI. Proctor sets his sights on persuading Rebecca to return
                to his care. As Gordon stews over his wife's betrayal, Deva
                shows off her resourcefulness.",
  season: 2,
  binge_serie_id: 2,
  episode: 1
)
BingeEpisode.create(
  name: "Pilot",
  description: "A recently paroled master thief assumes the identity of Lucas
                Hood, sheriff-in-waiting of Banshee, Pa. Keeping his history a
                secret, Lucas befriends boxer-turned-bartender Sugar Bates, and
                settles into his new life as Banshee’s sheriff. Lucas
                inadvertently gets tangled up in the rampant corruption of
                shunned Amish gangster Kai Proctor, while keeping a vigilant eye
                out for Mr. Rabbit, the New York mob boss who wants revenge
                against Lucas and former partner and lover Carrie for the
                jewel heist that landed Lucas in prison..",
  season: 1,
  binge_serie_id: 2,
  episode: 1
)
BingeEpisode.create(
  name: "The Thunder Man",
  description: "Spurned by Deva and Gordon, Carrie is forced to take up a new
                residence. With his leadership abilities questioned, Alex ramps
                up his efforts to recover the money stolen in the casino heist.
                Siobhan relives a nightmare when her ex-husband shows up looking
                to reconnect. Lucas is asked to return Proctor's favor.",
  season: 2,
  binge_serie_id: 2,
  episode: 2
)
