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

Bibliography.delete_all
# 1. . .
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'Creating a Directive that Manipulates the DOM',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'https://docs.angularjs.org/guide/directive#creating-a-directive-that-manipulates-the-dom'

)

# 2. . .
Bibliography.create(
	firstsurname: 'Underscore.js',
	authors: %{Underscore.js},
	year: 2014,
	publication: 'Internet',
	title: 'Underscore.js JavaScript Library',
	accessdate: 'Aug 13th, 2014',
	comment: 'homepage',
	url: 'http://underscorejs.org/'

)

# 3. . .
Bibliography.create(
	firstsurname: '2fdevs',
	authors: %{2fdevs},
	year: 2014,
	publication: 'Internet',
	title: 'Videogular. The HTML5 video player for AngularJS',
	accessdate: 'Sept 3rd, 2014',
	comment: 'GitHub',
	url: 'https://github.com/2fdevs/videogular'

)

# 4. . .
Bibliography.create(
	firstsurname: 'Dixon',
	authors: %{Dixon, M. & Webb, E.C.},
	year: 1979,
	publication: 'Book',
	isbn: '9780582462175',
	title: 'Enzymes',
	editors: 'Tipton, K.F. & Thorne, C.J.',
	edition: '3rd Edn.',
	publisher: 'Longmans',
	city: 'London'

)

# 5. . .
Bibliography.create(
	firstsurname: 'Ullman',
	authors: %{Ullman},
	year: 2012,
	publication: 'Book',
	title: 'Modern JavaScript. Develop and Design',
	edition: '2nd Edn.',
	isbn: '978-0321812520',
	publisher: 'PeachPit Press'

)

#6...
Bibliography.create(

	firstsurname: 'Smith',
	authors: %{Smith, K},
	year: 2006,
	publication: 'Journal',
	journalname: 'Computer',
	localpdflink: 'smith_2006_ajax.pdf',
	title: 'Simplifying Ajax-style Web development',
	volume: 39,

	pages: '98-101',
	url: 'http://ieeexplore.ieee.org/xpl/articleDetails.jsp?tp=&arnumber=1631955&queryText%3DSimplifying+Ajax-Style+Web+Development',
	abstract: 'Conventional browser-based Web applications require the user to submit a request to the server,'+
	' wait for the server to process the request and generate a response, and then wait for the browser to update the interface with the results.'+
	' This request-wait-response-wait pattern is extremely disruptive and lowers productivity. High network latency and interface complexity and '+
	'slow server responsiveness can further impair the user experience, resulting in decreased customer satisfaction, shorter and less frequent Web site visits,'+
	' and, ultimately, reduced revenue to e-businesses. In this article the author describes **asynchronous JavaScript and XML**,'+
	' a standards-based programming technique designed to make Web-based applications more responsive, interactive, and customizable '+
	' - in short, to recreate the seamless user experience of most other desktop applications.'+
	'see [here](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?tp=&arnumber=1631955&queryText%3DSimplifying+Ajax-Style+Web+Development)'

)

#7...
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'AngularJS — Superheroic JavaScript MVW Framework',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'https://angularjs.org/'

)

#8...
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'Angular-seed — the seed for AngularJS apps',
	accessdate: 'Sept 3rd, 2014',
	comment: 'GitHub',
	url: 'https://github.com/angular/angular-seed'

)

#9...
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: ' An End-to-End Framework for AngularJS',
	accessdate: 'Sept 3rd, 2014',
	comment: 'GitHub',
	url: 'https://github.com/angular/protractor'

)

#10..
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'Angular.js Demos, Examples, and Resources',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://techslides.com/angular-js-demos-examples-and-resources/'

)

#11...
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'AngularJS. PhoneCat Tutorial App',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'Available at:  https://docs.angularjs.org/tutorial/'

)

#12...
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'ng-change Directive',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'https://docs.angularjs.org/api/ng/directive/ngChange'

)

#13...
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'Creating Custom Directives',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'https://docs.angularjs.org/guide/directive'

)

#13...
Bibliography.create(
	firstsurname: 'AngularJS/Google',
	authors: %{AngularJS/Google},
	year: 2014,
	publication: 'Internet',
	title: 'Creating a Directive that Manipulates the DOM',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'https://docs.angularjs.org/guide/directive#creating-a-directive-that-manipulates-the-dom'

)

#14...
Bibliography.create(
	firstsurname: 'Bach',
	authors: %{Bach, M},
	year: 2004,
	publication: 'Internet',
	title: 'Visual Phenomena & Optical Illusions. “Rotating Snakes” Illusion',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://www.michaelbach.de/ot/mot_rotsnake/'

)

#15...
Bibliography.create(
	firstsurname: 'BBC',
	authors: %{BBC News World },
	year: 2014,
	publication: 'Internet',
	title: 'World Cup: Pick your greatest XI',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://www.bbc.com/news/world-27699398'

)

#16...
Bibliography.create(
	firstsurname: 'Bootstrap',
	authors: %{Bootstrap},
	year: 2014,
	publication: 'Internet',
	title: 'Bootstrap CDN. The recommended CDN for Bootstrap, Font Awesome, and Bootswatch',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://www.bootstrapcdn.com/'

)

#17...
Bibliography.create(
	firstsurname: 'CanvasJS',
	authors: %{CanvasJS},
	year: 2014,
	publication: 'Internet',
	title: 'CanvasJS.  HTML5 JavaScript Charts',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://canvasjs.com/'

)

#18...
Bibliography.create(
	firstsurname: 'Catlin',
	authors: %{Catlin, H},
	year: 2014,
	publication: 'Internet',
	title: 'Sass Basics (TeamTreehouse Deep Dive course)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video -training',
	url: 'http://teamtreehouse.com/library/sass-basics'

)

#19...
Bibliography.create(
	firstsurname: 'D3',
	authors: %{D3},
	year: 2014,
	publication: 'Internet',
	title: 'D3. Data-Driven Documents (JavaScript Library)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://d3js.org/'

)

#20...
Bibliography.create(
	firstsurname: 'Dimensions',
	authors: %{Dimensions},
	year: 2014,
	publication: 'Internet',
	title: 'Dimensions Toolkit. A super friendly Chrome extension for designers to test responsive websites',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://www.dimensionstoolkit.com/'

)

#21...
Bibliography.create(
	firstsurname: 'Dribbble',
	authors: %{Dribbble},
	year: 2014,
	publication: 'Internet',
	title: 'Dimensions Toolkit. A super friendly Chrome extension for designers to test responsive websites',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://developer.dribbble.com/'

)

#22...
Bibliography.create(
	firstsurname: 'FillText.com',
	authors: %{FillText.com},
	year: 2014,
	publication: 'Internet',
	title: 'FillText generates JSON datasets for demonstration purposes',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://www.filltext.com/'

)

#23...
Bibliography.create(
	firstsurname: 'Font-Awesome',
	authors: %{Font-Awesome},
	year: 2014,
	publication: 'Internet',
	title: 'Font-Awesome.  The iconic font and CSS toolkit',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: ' http://fortawesome.github.io/Font-Awesome/'

)

#23...
Bibliography.create(
	firstsurname: 'Foster',
	authors: %{Foster, J. & Sande, D},
	year: 2014,
	publication: 'Internet',
	title: 'Sassmeister (The Sass Playground)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'open-source software',
	url: 'http://sassmeister.com/'

)

#24...
Bibliography.create(
	firstsurname: 'GoogleDevelopers',
	authors: %{Google Developers},
	year: 2014,
	publication: 'Internet',
	title: 'API-Google Maps. Hello Map',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'https://developers.google.com/maps/'

)

#25...
Bibliography.create(
	firstsurname: 'Hernandez',
	authors: %{Hernandez, G.},
	year: 2014,
	publication: 'Internet',
	title: 'CSS Foundations (Team Treehouse Deep Dive Course)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video',
	url: 'Available at: http://teamtreehouse.com/'

)

#26...
Bibliography.create(
	firstsurname: 'Hevery',
	authors: %{Hevery, M. & Green, B.},
	year: 2014,
	publication: 'Internet',
	title: ' History and Development of AngularJS. (Keynote speech, ng-conf, Salt Lake City, Utah, January 2014)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video',
	url: 'https://www.youtube.com/watch?v=r1A1VR0ibIQ'

)

#27...
Bibliography.create(
	firstsurname: 'Icomoon',
	authors: %{Icomoon},
	year: 2014,
	publication: 'Internet',
	title: 'Icomoon - Custom Built and Crisp Icon Fonts, Done Right',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'https://icomoon.io/'

)

#28...
Bibliography.create(
	firstsurname: 'Instagram',
	authors: %{Instagram},
	year: 2014,
	publication: 'Internet',
	title: 'API-Instagram',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://instagram.com/developer/#'

)

#29...
Bibliography.create(
	firstsurname: 'Lavin',
	authors: %{Lavin, J. },
	year: 2014,
	publication: 'Internet',
	title: 'An Introduction to AngularJS End to End Testing with Protractor.  (Presentation at the August 2013 DFW Area AngularJS Meetup)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video-YouTube',
	url: 'https://www.youtube.com/watch?v=idb6hOxlyb8'

)

#30...
Bibliography.create(
	firstsurname: 'Maddalone',
	authors: %{Maddalone, J.},
	year: 2013,
	publication: 'Internet',
	title: 'An Introduction to AngularJS End to End Testing with Protractor.  (Presentation at the August 2013 DFW Area AngularJS Meetup)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video-YouTube',
	url: 'https://www.youtube.com/watch?v=kOtXHs1EISw'

)

#31...
Bibliography.create(
	firstsurname: 'Maddalone',
	authors: %{Maddalone, J.},
	year: 2013,
	publication: 'Internet',
	title: 'Creating Reusable Directives in AngularJS',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video-YouTube',
	url: 'https://www.youtube.com/watch?v=dsb4VprJam0'

)

#32...
Bibliography.create(
	firstsurname: 'ManOnBridge',
	authors: %{Man on Bridge},
	year: 2014,
	publication: 'Internet',
	title: 'Man on Bridge.  The story & photos of Arthur Fields',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video-YouTube',
	url: 'https://www.youtube.com/watch?v=dsb4VprJam0'

)

#33...
Bibliography.create(
	firstsurname: 'OverZealous',
	authors: %{OverZealous [StackOverflow]},
	year: 2014,
	publication: 'Internet',
	title: 'Fahrenheit and Celsius Bidirectional Conversion in AngularJS',
	accessdate: 'Sept 3rd, 2014',
	comment: 'answer',
	url: 'http://stackoverflow.com/a/17626761/499167'

)

#34...
Bibliography.create(
	firstsurname: 'OverZealous',
	authors: %{OverZealous [StackOverflow]},
	year: 2014,
	publication: 'Internet',
	title: 'Fahrenheit and Celsius Bidirectional Conversion in AngularJS',
	accessdate: 'Sept 3rd, 2014',
	comment: 'answer',
	url: 'http://stackoverflow.com/a/17626761/499167'

)


#35...
Bibliography.create(
	firstsurname: 'Protractor',
	authors: %{Protractor},
	year: 2014,
	publication: 'Internet',
	title: 'End-to-End testing for AngularJS',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://angular.github.io/protractor/#/'

)


#36...
Bibliography.create(
	firstsurname: 'RailsGuides',
	authors: %{Rails Guides},
	year: 2014,
	publication: 'Internet',
	title: 'Ruby on Rails Guides (v4.1.6)',
	accessdate: 'Sept 3rd, 2014',
	comment: 'homepage',
	url: 'http://guides.rubyonrails.org/index.html'

)

#37...
Bibliography.create(
	firstsurname: 'Ralph',
	authors: %{Ralph, J},
	year: 2014,
	publication: 'Internet',
	title: 'End to End Angular Testing with Protractor. (Presentation at the ng-conf, Salt Lake City, Utah, January 2014',
	accessdate: 'Sept 3rd, 2014',
	comment: 'video - YouTube',
	url: 'https://www.youtube.com/watch?v=aQipuiTcn3U'

)

	#38...
	Bibliography.create(
		firstsurname: 'respectTheCode',
		authors: %{respectTheCode [Stackoverflow]},
		year: 2011,
		publication: 'Internet',
		title: 'What is the best way to conditionally apply a class?',
		accessdate: 'Sept 3rd, 2014',
		comment: 'question',
		url: 'http://stackoverflow.com/q/7792652/499167'
	)

	#39...
	Bibliography.create(
		firstsurname: 'Rajcok',
		authors: %{Rajcok, M [Stackoverflow]},
		year: 2012,
		publication: 'Internet',
		title: 'A ternary in templates [AngularJS Ternary Operator]',
		accessdate: 'Sept 3rd, 2014',
		comment: 'question',
		url: 'http://stackoverflow.com/a/12151492/499167'

	)

	#40...
	Bibliography.create(
		firstsurname: 'RteNews',
		authors: %{RTE News },
		year: 2014,
		publication: 'Internet',
		title: 'Dublin in the 1960s (Cushman collection)',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: ' http://www.rte.ie/news/galleries/2014/0118/498705-dublin-in-the-1960s/'

	)

	#41...
	Bibliography.create(
		firstsurname: 'Ruby',
		authors: %{Ruby, S., Thomas, D. & Heinemeier-Hansson, D},
		year: 2011,
		publication: 'Book',
		title: 'Agile Web Development with Rails',
		edition: '4th Edn.',
		isbn: '978-1-934356-54-8',
		publisher: 'The Pragmatic Bookshelf'

	)

	#41...
	Bibliography.create(
		firstsurname: 'Ruby-on-Rails',
		authors: %{Ruby-on-Rails},
		year: 2014,
		publication: 'Internet',
		title: 'Ruby-on-Rails.  Web Development that doesn\'t hurt',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'http://rubyonrails.org/'

	)

	#42...
	Bibliography.create(
		firstsurname: 'Sande',
		authors: %{Sande, D},
		year: 2014,
		publication: 'Internet',
		title: 'Advanced Sass (Team-Treehouse Deep Dive Course)',
		accessdate: 'Sept 3rd, 2014',
		comment: 'video',
		url: 'http://teamtreehouse.com/library/advanced-sass'

	)

	#43...
	Bibliography.create(
		firstsurname: 'Sass',
		authors: %{Sass},
		year: 2014,
		publication: 'Internet',
		title: 'Sass: syntactically awesome stylesheets.  CSS with Superpowers',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'http://sass-lang.com/'

	)

	#44...
	Bibliography.create(
		firstsurname: 'ScriptTutorials ',
		authors: %{Script Tutorials},
		year: 2013,
		publication: 'Internet',
		title: 'Photo Gallery with AngularJS and CSS3',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'http://www.script-tutorials.com/photo-gallery-with-angularjs-and-css3/'

	)

	#45...
	Bibliography.create(
		firstsurname: 'Sethi',
		authors: %{Sethi, A [Stackoverflow]},
		year: 2013,
		publication: 'Internet',
		title: 'Adding multiple class using ng-class',
		accessdate: 'Sept 3rd, 2014',
		comment: 'question',
		url: ' http://stackoverflow.com/q/18871277/499167'
	)

	#46...
	Bibliography.create(
		firstsurname: 'thenikso',
		authors: %{thenikso},
		year: 2014,
		publication: 'Internet',
		title: 'Angular-FlexSlider. AngularJS directive to use WooThemes\' FlexSlider jQuery plugin',
		accessdate: 'Sept 3rd, 2014',
		comment: 'GitHub',
		url: 'https://github.com/thenikso/angular-flexslider'

	)

	#47...
	Bibliography.create(
		firstsurname: 'TheTimeNow',
		authors: %{TheTimeNow},
		year: 2014,
		publication: 'Internet',
		title: 'TheTimeNow. Reliable Current Time of the World',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'http://www.thetimenow.com/'
	)

	#48...
	Bibliography.create(
		firstsurname: 'tyronewilson',
		authors: %{tyronewilson},
		year: 2014,
		publication: 'Internet',
		title: 'Protractor::Rails',
		accessdate: 'Sept 3rd, 2014',
		comment: 'GitHub',
		url: 'https://github.com/tyronewilson/protractor-rails'

	)

	#49...
	Bibliography.create(
		firstsurname: 'Tutorialzine',
		authors: %{Tutorialzine},
		year: 2014,
		publication: 'Internet',
		title: 'Learn AngularJS. 5 Practical Examples',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'http://tutorialzine.com/2013/08/learn-angularjs-5-examples/'

	)

	#50...
	Bibliography.create(
		firstsurname: 'WooThemes',
		authors: %{WooThemes},
		year: 2014,
		publication: 'Internet',
		title: 'FlexSlider 2 The best responsive slider. Period',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'http://flexslider.woothemes.com/'

	)

	#51...
	Bibliography.create(
		firstsurname: 'W3C',
		authors: %{W3C},
		year: 2014,
		publication: 'Internet',
		title: 'HTML5 A vocabulary and associated APIs for HTML and XHTML.  W3C Proposed Recommendation Aug 12th 2014',
		accessdate: 'Sept 3rd, 2014',
		comment: 'document',
		url: 'http://www.w3.org/TR/html5/'

	)

	#52..
	Bibliography.create(
		firstsurname: 'W3C',
		authors: %{W3C},
		year: 2014,
		publication: 'Internet',
		title: 'Introduction to CSS3 W3C Working Draft, 23 May 2001 ',
		accessdate: 'Sept 3rd, 2014',
		comment: 'document',
		url: 'http://www.w3.org/TR/2001/WD-css3-roadmap-20010523'

	)

	#53..
	Bibliography.create(
		firstsurname: 'Crockford',
		authors: %{Crockford, D.},
		year: 2008,
		publication: 'Book',
		title: 'JavaScript: The Good Parts',
		edition: '1st Edn.',
		publisher: 'O’Reilly Media',
		isbn: '978-0-596-51774-8',
		city: 'Sebastopol'

	)

	#54 ...


	Bibliography.create(
		firstsurname: 'Popek',
		authors: %{Popek, G. J. and Goldberg, R. P.},
		year: 1974,
		publication: 'Journal',
		journalname: 'Commun. ACM',
		title: 'Formal Requirements for Virtualizable Third Generation Architectures',
		volume: 17,
		localpdflink: 'popek_goldberg_1974_virtualization.pdf',
		pages: '412-421',
		url: 'http://cs.nyu.edu/courses/fall14/CSCI-GA.3033-010/popek-goldberg.pdf'

	)

	#55...
	Bibliography.create(
		firstsurname: 'Mell',
		authors: %{Mell, P. &  Grance, T},
		year: 2011,
		publication: 'Journal',
		journalname: 'Computer Security Division, Information Technology Laboratory, NIST',
		title: 'The NIST definition of cloud computing (Special Publication 800-145)',
		volume: 28,
		localpdflink: 'Mell_Grance_nist_on_cloud.pdf',
		pages: '1-3',
		url: 'http://doi.acm.org/10.1145/361011.361073'

	)

	#56...
	Bibliography.create(
		firstsurname: 'Krasner',
		authors: %{Krasner, G. E. and Pope, S.T.},
		year: 1988,
		publication: 'Journal',
		journalname: 'J. Object Oriented Program.',
		title: 'A Cookbook for Using the Model-view Controller User Interface Paradigm in Smalltalk-80',
		volume: 1,
		localpdflink: 'Krasner_Pope_1988_mvc.pdf',
		pages: '26-49',
		url: 'https://www.lri.fr/~mbl/ENS/FONDIHM/2013/papers/Krasner-JOOP88.pdf'

	)

	#51...
	Bibliography.create(
		firstsurname: 'Garrett',
		authors: %{Garrett, J.J.},
		year: 2005,
		publication: 'Internet',
		title: 'Ajax: A New Approach to Web Applications',
		accessdate: 'Sept 3rd, 2014',
		comment: 'Adaptive Path',
		url: 'http://www.adaptivepath.com/ideas/ajax-new-approach-web-applications/'

	)

	# 52. . .
	Bibliography.create(
		firstsurname: 'Deitel',
		authors: %{Deitel, P. and Deitel, H. M.},
		year: 2012,
		publication: 'Book',
		title: 'Internet & World Wide Web. How to Program',
		edition: '4th Edn.',
		isbn: '978-0-13-215100-9',
		publisher: 'Pearson. Prentice-Hall'

	)

	# 53. . .
	Bibliography.create(
		firstsurname: 'Fowler',
		authors: %{Fowler, M., Rice, D., Foemmel, M., Hieatt, E., Mee, R. and Stafford, R.},
		year: 2003,
		publication: 'Book',
		title: 'Patterns of Enterprise Application Architecture',
		isbn: '978-0321127426',
		publisher: 'Addison-Wesley'
	)


	# 54. . .
	Bibliography.create(
		firstsurname: 'Jacob',
		authors: %{Jacob, F.},
		year: 1977,
		publication: 'Journal',
		journalname: 'Science',
		title: 'Evolution and tinkering',
		volume: 196,
		localpdflink: 'jacob_1977_Evolution_tinkering.pdf',
		pages: '1161–1166',
		url: 'http://www.gvsu.edu/cms3/assets/6D2549F6-ED41-142A-2D7251DEDEE796B4/Evolution%20and%20tinkering.pdf'

	)

	# 55. . .
	Bibliography.create(
		firstsurname: 'Kuhn',
		authors: %{Kuhn, T. S.},
		year: 1962,
		publication: 'Book',
		title: 'The Structure of Scientific Revolutions',
		edition: '3rd Edn.',
		isbn: '978-0226458083',
		publisher: 'University of Chicago Press'

	)

	# 56. . .
	Bibliography.create(
		firstsurname: 'Niederest-Robbins, J',
		authors: %{Niederest-Robbins, J},
		year: 2012,
		publication: 'Book',
		title: 'Learning Web Design. A Beginner’s Guide to HTML, CSS, Javascript, and Web Graphics',
		edition: '4th Edn.',
		isbn: '978-1-44931-927-4',
		publisher: 'O’Reilly'

	)

	# 57. . .
	Bibliography.create(
		firstsurname: 'Mozilla',
		authors: %{Mozilla Developer Network},
		year: 2014,
		publication: 'Internet',
		title: 'Ajax',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'https://developer.mozilla.org/en/docs/AJAX'

	)

	# 57. . .
	Bibliography.create(
		firstsurname: 'Mozilla',
		authors: %{Mozilla Developer Network},
		year: 2014,
		publication: 'Internet',
		title: 'Ajax. Getting Started',
		accessdate: 'Sept 3rd, 2014',
		comment: 'homepage',
		url: 'https://developer.mozilla.org/en-US/docs/AJAX/Getting_Started'


	)

	#58...
	Bibliography.create(
		firstsurname: 'Licklider',
		authors: %{Licklider, J.C.R.},
		year: 1960,
		publication: 'Journal',
		journalname: 'IRE Transactions on Human Factors in Electronics (Vol.HFE-1)',
		title: 'Man-Computer Symbiosis',
		localpdflink: 'Licklider_1960_ Man_Computer_Symbiosis.pdf',
		pages: '4-11',
		url: 'http://worrydream.com/refs/Licklider%20-%20Man-Computer%20Symbiosis.pdf'

	)

	#59...
	Bibliography.create(
		firstsurname: 'Gude',
		authors: %{Gude, S. and Hafiz, M. and Wirfs-Brock, A.},
		year: 2014,
		publication: 'Journal',
		journalname: ' Computer Software and Applications Conference (COMPSAC), 2014 IEEE 38th Annual',
		title: 'JavaScript: The Used Parts',
		pages: '466-475',
		localpdflink: 'gude_Hafiz_2014_js_used_parts.pdf',
		url: 'http://ieeexplore.ieee.org/xpl/articleDetails.jsp?tp=&arnumber=1631955&queryText%3DSimplifying+Ajax-Style+Web+Development'

	)

	#60 ...
	Bibliography.create(
		firstsurname: "Lovrenčić",
		authors: "Lovrenčić, A., Konecki, M. & Orehovački,T ",
		year: 2009,
		volume: "33",
		publication: "Journal",
		comment: "pdf",
		journalname: "JIOS",
		localpdflink: "Lovrencic_50yr_program_lang.pdf",
		pages: '79-150',
		title: "1957-2007: 50 Years of Higher Order Programming Languages",
		url: "https://bib.irb.hr/datoteka/377471.Lovrencic_Konecki_Orehovacki.pdf"

	)
	#61 ...
	Bibliography.create(
		firstsurname: "Time",
		authors: "Time(Anonymous)",
		year: 2014,
		journalname: "Time",
		volume: "April 29, 2014",
		publication: "Journal",
		title: "Fifty Years of BASIC, the Programming Language That Made Computers Personal",
		url: "http://time.com/69316/basic/"

	)

	#62 ...
	Bibliography.create(
		firstsurname: 'UI.Utils',
		authors: %{UI.Utils},
		year: 2014,
		publication: 'Internet',
		title: 'UI.Utils.  Swiss-Army-Knife of AngularJS tools (with no external dependencies)',
		accessdate: 'January 17th, 2015',
		comment: 'homepage',
		url: 'http://angular-ui.github.io/ui-utils/'

	)

	#63..
	Bibliography.create(
		firstsurname: 'Flaticon',
		authors: %{Flaticon},
		year: 2014,
		publication: 'Internet',
		title: 'Flaticon. The largest database of free vector icons',
		accessdate: 'Jan. 18th 2015',
		comment: 'homepage',
		url: 'http://www.flaticon.com/'

	)

	Bibliography.create(
		firstsurname: 'johnson',
		authors: %{Johnson, C [Stackoverflow]},
		year: 2012,
		publication: 'Internet',
		title: 'What are the differences between Mustache.js and Handlebars.js?',
		accessdate: 'Jan 23rd, 2015',
		comment: 'question',
		url: 'http://stackoverflow.com/q/10555820/499167',
		abstract: '*Handlebars adds #if, #unless, #with, and #each'+
		'*Handlebars is 2 to 7 times faster'+
			'*Mustache is missing helpers and the more advanced blocks because it strives to be logicless'+
			'*Handlebars\' custom helpers can be very useful, but often end up introducing logic into your templates'+
			'*!! Mustache has interpreters in many languages, while Handlebars is Javascript only.'+
			'see also [here](http://stackoverflow.com/q/10555820/499167)'

	)

	Bibliography.create(
		firstsurname: 'jaeyong',
		authors: %{jaeyong [Stackoverflow]},
		year: 2012,
		publication: 'Internet',
		title: 'Google MAP API Uncaught TypeError: Cannot read property \'offsetWidth\' of nulls?',
		accessdate: 'Jan 26rd, 2015',
		comment: 'question',
		url: 'http://stackoverflow.com/q/11740663/499167'

	)

	Bibliography.create(
		firstsurname: 'dowling',
		authors: %{Dowling, T [Stackoverflow]},
		year: 2012,
		publication: 'Internet',
		title: 'Do fish break a water molecule to absorb oxygen?',
		accessdate: 'Jan 26rd, 2015',
		comment: 'answer',
		url: 'http://biology.stackexchange.com/a/3520/1136'

	)

	Bibliography.create(
		firstsurname: 'dowling',
		authors: %{Dowling, T [Stackoverflow]},
		year: 2012,
		publication: 'Internet',
		title: 'Is there any use of CO₂ in human body?',
		accessdate: 'Jan 26rd, 2015',
		comment: 'answer',
		url: 'http://biology.stackexchange.com/a/10001/1136'

	)

	Bibliography.create(
		firstsurname: 'dowling',
		authors: %{Dowling, T [StackExchange]},
		year: 2012,
		publication: 'Internet',
		title: 'Elegant way to map a function to only the last element of each sublist [duplicate]?',
		accessdate: 'Jan 26rd, 2015',
		comment: 'answer',
		url: 'http://mathematica.stackexchange.com/a/8052/106'

	)

	Bibliography.create(
		firstsurname: 'dowling',
		authors: %{Dowling, T [StackExchange]},
		year: 2012,
		publication: 'Internet',
		title: 'How to apply or map a list of functions to a list of data?',
		accessdate: 'Jan 26rd, 2015',
		comment: 'answer',
		url: 'http://mathematica.stackexchange.com/a/3862/106'

	)

	Bibliography.create(
		firstsurname: 'dowling',
		authors: %{Dowling, T [StackExchange]},
		year: 2012,
		publication: 'Internet',
		title: 'How do we solve N-Rooks variation using primes?',
		accessdate: 'Jan 26rd, 2015',
		comment: 'answer',
		url: 'http://mathematica.stackexchange.com/a/13863/106'

	)

	Bibliography.create(
		firstsurname: 'Sankar',
		authors: %{Sankar, S [StackOverflow]},
		year: 2011,
		publication: 'Internet',
		title: 'Adding parameter to ng-click function inside ng-repeat, seems not to work',
		accessdate: 'Feb 1st, 2015',
		comment: 'answer',
		url: 'http://stackoverflow.com/a/17039960/499167'

	)

	Bibliography.create(
		firstsurname: 'DeWitt',
		authors: %{DeWitt, T [StackOverflow]},
		year: 2011,
		publication: 'Internet',
		title: 'What does the j function in Rails do?',
		accessdate: 'Feb 1st, 2015',
		comment: 'answer',
		url: 'http://stackoverflow.com/q/12518526/499167'

	)

	Bibliography.create(
		firstsurname: 'kikito',
		authors: %{kikito [StackOverflow]},
		year: 2009,
		publication: 'Internet',
		title: 'Why escape_javascript before rendering a partial?',
		accessdate: 'Feb 1st, 2015',
		comment: 'answer',
		url: 'http://stackoverflow.com/a/1623813/499167'

	)


	Bibliography.create(
		firstsurname: 'Heilmann',
		authors: %{Heilmann, C.},
		year: 2011,
		publication: 'Internet',
		title: 'On single page apps',
		accessdate: 'Feb 1st, 2015',
		comment: 'blog',
		url: 'http://christianheilmann.com/2011/12/28/on-single-page-apps/'

	)


	Bibliography.create(
		firstsurname: 'Gruber',
		authors: %{Gruber, J.},
		year: 2015,
		publication: 'Internet',
		title: 'Markdown (Daring Fireball Website)',
		accessdate: 'Feb 1st, 2015',
		comment: 'homepage',
		url: 'http://daringfireball.net/projects/markdown/'

	)

	Bibliography.create(
		firstsurname: 'Terratakashi',
		authors: %{Terratakashi's Blog},
		year: 2014,
		publication: 'Internet',
		title: 'Use different rvm gemset for rails app on apache server(passenger module)',
		accessdate: 'Feb 22nd, 2015',
		comment: 'homepage',
		url: 'http://terratakashi.logdown.com/posts/190823-use-different-rvm-gemset-for-rails-app-on-apache-server'

	)


	Bibliography.create(
		firstsurname: 'Ellingwood',
		authors: %{Ellingwood,J},
		year: 2014,
		publication: 'Internet',
		title: 'How To Set Up Apache Virtual Hosts on Ubuntu 14.04 LTS',
		accessdate: 'Feb 22nd, 2015',
		comment: 'homepage',
		url: 'https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-14-04-lts'

	)

	Bibliography.create(
		firstsurname: 'henry',
		authors: %{henry [StackOverflow]},
		year: 2014,
		publication: 'Internet',
		title: 'Can\'t Connect localhost:3000 Ruby on Rails in Vagrant',
		accessdate: 'Feb 22nd, 2015',
		comment: 'homepage',
		url: 'http://stackoverflow.com/q/27627286/499167'

	)

