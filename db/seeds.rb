#encoding: utf-8
Commodity.delete_all
Commodity.create(name: 'Pele',
								 description:
								 %{Famous Brazilian footballer, considered by many to be the greatest of all time.
								 },
								 image_url: '103_pele.jpg',
								 category: 'Midfielder',
								 price: 5000.0,
								 winner: true,
								 year: 1958
								)
# 2. . .
Commodity.create(name: 'Gordon Banks',
								 description:
								 %{Famous English goalkeeper, best known for his save from Pele in the 1970 World Cup in Mexico.
								 },
								 image_url: '001_banks.jpg',
								 category: 'Goalkeeper',
								 price: 3000.0,
								 winner: true,
								 year: 1966
								)
#3 ...

Commodity.create(name: 'Salvatore Schillaci',
								 description:
								 %{Scored six goals during the 1990 World Cup finals, including the one that put Ireland out of the competition
								 },
								 image_url: '109_schillaci.jpg',
								 category: 'Midfielder',
								 price: 2000.0,
								 winner: false,
								 year: 1990

								)

#4...
Commodity.create(name: 'Geoff Hurst',
								 description:
								 %{Famous English footballer who scored a hat-trick in the 1966 World Cup final
								 },
								 image_url: '095_hurst.jpg',
								 category: 'Forward',
								 price: 1980.0,
								 winner: true,
								 year: 1966

								)

#5...
Commodity.create(name: 'Gianluigi Buffon',
								 description:
								 %{Italian goalkeeper. World Cup winner 2006.  Rated by Pele as one of the top 100 players of all time.
								 },
								 image_url: '002_buffon.jpg',
								 category: 'Midfielder',
								 price: 3000.0,
								 winner: true,
								 year: 2006

								)
#6...

Commodity.create(name: 'Oliver Kahn',
								 description:
								 %{German goalkeeper on the team that won the European Championship in 1996 and that was runner-up in the 2002 World Cup.
								 },
								 image_url: '005_kahn.jpg',
								 category: 'Goalkeeper',
								 price: 2000,
								 winner: false,
								 year: 2002

								)
#7...

Commodity.create(name: 'Dino Zoff',
								 description:
								 %{Italian goalkeeper who is the oldest ever winner of the World Cup, having captained Italy to victory in Spain in 1982
								 },
								 image_url: '010_zoff.jpg',
								 category: 'Goalkeeper',
								 price: 2000.0,
								 winner: true,
								 year: 1982

								)

#8...

Commodity.create(name: 'Roger Milla',
								 description:
								 %{Roger Milla played in three World Cups for the Cameroon national team, achieving international fame at the age of 38 mainly for his performances  at the 1990 FIFA World Cup where he scored four goals.
								 },
								 image_url: '101_milla.jpg',
								 category: 'Forward',
								 price: 200.0,
								 winner: false,
								 year: 1990

								)
#9...

Commodity.create(name: 'Miroslav Klose',
								 description:
								 %{German striker who is top scorer ever in the FIFA World Cup, having scored 16 goals in total. World Cup Winner 2014.  Golden Boot 2006.
								 },
								 image_url: '098_klose.jpg',
								 category: 'Forward',
								 price: 30000.0,
								 winner: true,
								 year: 1900

								)
#10...

Commodity.create(name: 'Gerhard Muller',
								 description:
								 %{Prolific German striker who scored many memorable FIFA World Cup goals, including the one that knocked England out of the 1970 World Cup in Mexico.  World Cup winner 1974.
								 },
								 image_url: '102_muller.jpg',
								 category: 'Forward',
								 price: 200000.0,
								 winner: true,
								 year: 1974

								)
#11...

Commodity.create(name: 'Franco Baresi',
								 description:
								 %{Italian defender.  FIFA World Cup winner in 1982.  Considered to be one of the game's greatest defenders.
								 },
								 image_url: '015_baresi.jpg',
								 category: 'Defender',
								 price: 9000.0,
								 winner: true,
								 year: 1900

								)
#12...

Commodity.create(name: 'Bobby Moore',
								 description:
								 %{Captain of the England FIFA World Cup winning side of 1966.  Outstanding defender both for England and for West Ham, his club.
								 },
								 image_url: '035_moore.jpg',
								 category: 'Defender',
								 price: 1066,
								 winner: true,
								 year: 1966

								)

#13...
Commodity.create(name: 'Ossie Ardiles',
								 description:
								 %{Ossie Ardiles won the FIFA World cup with Argentina in 1978, playing in midfield.  He also managed Tottenham Hotspur in the 1990s, where he was estremely popular with fans due to his attacking football philosophy.  He worked for RTE during the recent World Cup in Brazil.

								 },
								 image_url: '051_ardiles.jpg',
								 category: 'Midfielder',
								 price: 5000.0,
								 winner: true,
								 year: 1978

								)

#14...
Commodity.create(name: 'Bobby Charlton ',
								 description:
								 %{England midfielder who won the FIFA World Cup in 1966.  Considered by many to be the greatest English footballer of all time.
								 },
								 image_url: '055_charlton.jpg',
								 category: 'Midfielder',
								 price: 6234.0,
								 winner: true,
								 year: 1966

								)

#15...
Commodity.create(name: 'Paul Breitner',
								 description:
								 %{Paul Breitner won the FIFA World Cup with Germany in 1974 where he scored in the final.  He is considered one of the greatest German players of all time.
								 },
								 image_url: '020_breitner.jpg',
								 category: 'Defender',
								 price: 3454.0,
								 winner: true,
								 year: 1974

								)

#16...
Commodity.create(name: 'Franz Beckenbauer',
								 description:
								 %{Franz Beckenbauer is a German football coach, manager, and former player, nicknamed Der Kaiser.  He is regarded as the greatest German footballer of all time.  He is one of only two men, along with Brazil's Mario Zagallo, to have won the World Cup both as a player and as a coach, having won the World Cup as a player in 1974 and as a coach in 1990.
								 },
								 image_url: '016_beckenbauer.jpg',
								 category: 'Defender',
								 price: 34590.0,
								 winner: true,
								 year: 1900

								)

#17...
Commodity.create(name: 'Michel Platini',
								 description:
								 %{Michel Francois Platini  is a  French footballer  and manager, and the president of the Union of European Football Associations (UEFA) since 2007.  He won the Ballon d'Or three times, in 1983, 1984 and 1985.
								 },
								 image_url: '076_platini.jpg',
								 category: 'Midfielder',
								 price: 40999.0,
								 winner: true,
								 year: 1900

								)

#18...
Commodity.create(name: 'Paolo Maldini',
								 description:
								 %{Paolo Maldini is a retired Italian footballer who spend all his career (25 seasons) at a single club, AC Milan.  Played for Italy in the 1990 World Cup.
								 },
								 image_url: '034_maldini.jpg',
								 category: 'Defender',
								 price: 88890.0,
								 winner: false,
								 year: 1990

								)
#19...
Commodity.create(name: 'Carles Puyol ',
								 description:
								 %{Carles Puyol is a  Spanish footballer who was a member of the Spanish team that were European Champions in 2008 and World Champions in 2010.
								 },
								 image_url: '040_puyol.jpg',
								 category: 'Defender',
								 price: 324567.0,
								 winner: true,
								 year: 2010

								)

#20...
Commodity.create(name: 'George Cohen',
								 description:
								 %{George Cohen was right full-back on the England team that won the FIFA World Cup in 1966.  His entire career was spent at a single club, Fulham.
								 },
								 image_url: '026_cohen.jpg',
								 category: 'Defender',
								 price: 334433.0,
								 winner: true,
								 year: 1966

								)

#21...
Commodity.create(name: 'Romario',
								 description:
								 %{Romario is a former Brazilian footballer  renowned for his clinical finishing.  He won the World Cup with Brazil in 1994, receiving the Golden Ball as player of the tournament.
								 },
								 image_url: '105_romario.jpg',
								 category: 'Forward',
								 price: 234554.0,
								 winner: true,
								 year: 1994

								)

#22...
Commodity.create(name: 'Andrea Pirlo',
								 description:
								 %{Pirlo is the fourth-most capped player in the history of the Italian national team, along with Dino Zoff, with 112 caps.  Won the FIFA World Cup with Italy in 2006, where his creative midfield play was a critical factor in Italian success.
								 },
								 image_url: '075_pirlo.jpg',
								 category: 'Midfielder',
								 price: 44444.0,
								 winner: true,
								 year: 2006

								)

#23...
Commodity.create(name: 'Johan Neeskens',
								 description:
								 %{Johan Neeskens is a Dutch football player who was a member of the Dutch national team that finished as runners-up in the 1974 and 1978 FIFA World Cups.  He is widely regarded as one of the most creative midfielders of all time.
								 },
								 image_url: '073_neeskens.jpg',
								 category: 'Midfielder',
								 price: 3344477.0,
								 winner: false,
								 year: 1974

								)

#24...
Commodity.create(name: 'Gheorghe Hagi',
								 description:
								 %{Gheorghe Hagi  is is considered the greatest Romanian footballer of all time, known in Romania as  'Regele' (The King).  Failed to score against Ireland in Italia 1990.
								 },
								 image_url: '067_hagi.jpg',
								 category: 'Midfielder',
								 price: 333333.0,
								 winner: false,
								 year: 1990

								)

#25...
Commodity.create(name: 'Andres Iniesta',
								 description:
								 %{ Andres Iniesta is a Spanish professional footballer who plays for Barcelona and the Spain national team as a central midfielder.  Iniesta was a member of the Spanish teams that won the European championship in 2006 and the  FIFA World Cup in 2010.
								 },
								 image_url: '068_iniesta.jpg',
								 category: 'Midfielder',
								 price: 89099.0,
								 winner: true,
								 year: 2010

								)

