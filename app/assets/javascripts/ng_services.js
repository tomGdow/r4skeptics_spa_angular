'use strict';

/* Services */

angular.module('myApp.services', []).
    value('version', '0.1').factory('imgService', function () {
        return {
            imgBanks: {
                "imageSource": "001_banks.jpg",
                "imageAltDesc": "Picture of Gordon Banks",
                "captionText": "Gordon Banks",
                "imageId": "gordon-banks"
            },

            imgPele: {
                "imageSource": "103_pele.jpg",
                "imageAltDesc": "Picture of Pele",
                "captionText": "Pele",
                "imageId": "pele-image"
            },

            imgSchillachi: {
                "imageSource": "109_schillaci.jpg",
                "imageAltDesc": "Picture of Salvadore Schillachi",
                "captionText": "Schillachi",
                "imageId": "schillachi-italy"
            }
        };
    }).factory('chartsService', function () {
        return {
            dataOne: [40, 4, 50, 15, 16, 33, 52, 20],
            dataTwo: [65, 22, 33, 70, 16, 43, 80, 61],
            dataThree: [90, 4, 40, 60, 13, 33, 2, 20],
            dataYears: [2012, 2013, 2014]

        };
    }).factory('flexsliderService', function () {
        return {
            flexdata: [

                ["assets/marie_curie.jpg", "Marie Curie"],
                ["assets/watson_golden_ratio.jpg", "James Watson"],
                ["assets/popper_golden_ratio.jpg", "Karl Popper"],
                ["assets/rutherford_golden_ratio.jpg", "Ernst Rutherford"],
                ["assets/lise_meitner_golden_ratio.jpg", "Lise Meitner"],
                ["assets/dorothy_hodgkin_golden_ratio.jpg", "Dorothy Hodgkin"]

            ]
        };
    }).factory('dublinSliderService', function () {
        return {
            dublinSliderData: [
                {
                    "src": "dublinzz.jpg ",
                    "desc": "College Green",
                    "longdesc": "College Green Dublin, around 1961 (Charles Cushman Collection)",
                    "copyright": "86157-942. Copyright Indiana University Archive"
                },
                {
                    "src": "dublinee.jpg ",
                    "desc": "Lord Edward Street",
                    "longdesc": "Lord Edward Street Dublin, around 1961 (Charles Cushman Collection)",
                    "copyright": "0008615e-942. Copyright Indiana University Archive"
                },
                {
                    "src": "dublincc.jpg ",
                    "desc": "Parliment Street",
                    "longdesc": "Parliment Street Dublin, around 1961 (Charles Cushman Collection)",
                    "copyright": "0008615c-942. Copyright Indiana University Archive"
                },
                {
                    "src": "dublinaa.jpg ",
                    "desc": "O Connell Bridge",
                    "longdesc": "O Connell Bridge Dublin, around 1961 (Charles Cushman Collection)",
                    "copyright": "0008615a-942. Copyright Indiana University Archive"
                },
                {
                    "src": "dublinbb.jpg ",
                    "desc": "Dawson Street",
                    "longdesc": "Dawson Street Dublin, around 1963 (Charles Cushman collection)",
                    "copyright": "0008615b-942. Copyright Indiana University Archive"
                }

            ]
        };
    }).factory('videoService', function () {
        return {
            oceanVideo: [
                {
                    "mp4": "http://video-js.zencoder.com/oceans-clip.mp4"
                },
                {
                    "webm": "http://video-js.zencoder.com/oceans-clip.webm"
                },
                {
                    "ogg": "http://video-js.zencoder.com/oceans-clip.ogv"
                }
            ],

            earthAsDotVideo: [
                {
                    "mp4": "http://www.videogular.com/assets/videos/videogular.mp4"
                },
                {
                    "webm": "http://www.videogular.com/assets/videos/videogular.webm"
                },
                {
                    "ogg": "http://www.videogular.com/assets/videos/videogular.ogg"
                }
            ]
        };
    }).factory('instagram', function ($resource) {

        //Modified from http://tutorialzine.com/2013/08/learn-angularjs-5-examples/

        return {
            fetchPopular: function (callback) {

                // The ngResource module gives us the $resource service. It makes working with
                // AJAX easy. Here I am using the client_id of a test app. Replace it with yours.

                var api = $resource('https://api.instagram.com/v1/media/popular?client_id=:client_id&callback=JSON_CALLBACK', {
                    client_id: '642176ece1e7445e99244cec26f4de1f'
                }, {
                    // This creates an action which we've chosen to name "fetch". It issues
                    // an JSONP request to the URL of the resource. JSONP requires that the
                    // callback=JSON_CALLBACK part is added to the URL.

                    fetch: {
                        method: 'JSONP'
                    }
                });

                api.fetch(function (response) {

                    // Call the supplied callback function
                    callback(response.data);

                });
            }
        }

    }).factory('theTimeNowService', function () {
        return {
            "url": [
                "https://www.thetimenow.com",
                "/clock/gmt/greenwich_mean_time?t=n&amp;embed=1&amp;text=16&amp;{{textdate}}&amp;",
                "format=24&amp;digitalclock=20&amp;analogclock=60&amp;letter_spacing=-2&amp;bordersize=0&amp;",
                "bordercolor=fff&amp;bgcolor=fff&amp;colorloc=fff&amp;colordigital=FFA500&amp;colordate=ffffff&amp;",
                "styleloc=normal&amp;styledigital=normal&amp;styledate=normal&amp;right=0"
            ].join()
        }

    }).factory('allIrelandDataService', function () {
        return {

            "footballers": [
                {
                    "label": "Kerry",
                    "y": 36,
                    "name": "Kerry"
                },
                {
                    "label": "Dublin",
                    "y": 24,
                    "name": "Dublin"
                },
                {
                    "label": "Galway",
                    "y": 9,
                    "name": "Galway"
                },
                {
                    "label": "Cork",
                    "y": 7,
                    "name": "Cork"
                },
                {
                    "label": "Meath",
                    "y": 7,
                    "name": "Meath"
                },
                {
                    "label": "Cavan",
                    "y": 5,
                    "name": "Cavan"
                },
                {
                    "label": "Wexford",
                    "y": 5,
                    "name": "Wexford"
                },
                {
                    "label": "Down",
                    "y": 5,
                    "name": "Down"
                },
                {
                    "label": "Kildare",
                    "y": 4,
                    "name": "Kildare"
                },
                {
                    "label": "Tipperary",
                    "y": 4,
                    "name": "Tipperary"
                },
                {
                    "label": "Mayo",
                    "y": 3,
                    "name": "Mayo"
                },
                {
                    "label": "Offaly",
                    "y": 3,
                    "name": "Offaly"
                },
                {
                    "label": "Louth",
                    "y": 3,
                    "name": "Louth"
                },
                {
                    "label": "Tyrone",
                    "y": 3,
                    "name": "Tyrone"
                },
                {
                    "label": "Others",
                    "y": 8,
                    "name": "Others"
                }
            ],

            "hurlers": [
                {

                    "label": "Kilkenny",
                    "y": 34,
                    "name": "Kilkenny"
                },
                {
                    "label": "Cork",
                    "y": 30,
                    "name": "Cork"
                },
                {
                    "label": "Tipperary",
                    "y": 26,
                    "name": "Tipperary"
                },
                {
                    "label": "Limerick",
                    "y": 7,
                    "name": "Limerick"
                },
                {
                    "label": "Dublin",
                    "y": 6,
                    "name": "Dublin"
                },
                {
                    "label": "Wexford",
                    "y": 6,
                    "name": "Wexford"
                },
                {
                    "label": "Galway",
                    "y": 4,
                    "name": "Galway"
                },
                {
                    "label": "Offaly",
                    "y": 4,
                    "name": "Offaly"
                },
                {
                    "label": "Clare",
                    "y": 4,
                    "name": "Clare"
                },
                {
                    "label": "Waterford",
                    "y": 2,
                    "name": "Waterford"
                },
                {
                    "label": "Others",
                    "y": 3,
                    "name": "Others"
                }
            ],

            "countycolours": {

                "clare": "cyan",
                "waterford": "orange",
                "kilkenny": "goldenrod",
                "limerick": "green",
                "kerry": "green",
                "dublin": "MediumSlateBlue ",
                "galway": "maroon",
                "cork": "red",
                "meath": "lightgreen",
                "cavan": "blue",
                "wexford": "green",
                "downUlster": "darkred",
                "kildare": "aquamarine",
                "tipperary": "darkblue",
                "mayo": "orange",
                "offaly": "green",
                "louth": "darkkhaki",
                "tyrone": "cyan",
                "others": "  brown"
            }
        };

    }).factory('dribbleService', function () {
        return {
            "url": 'http://api.dribbble.com/shots/popular?callback=JSON_CALLBACK'
        }

    }).factory('googleService', function () {
        return {

            "addressOne": "College Green, Dublin, Ireland"
        };

    }).factory('functionsService', function ($location, $rootScope) {

        return {

            addClassById: function ($class, $id) {

                if (document.getElementById($id)) {
                    document.getElementById($id).className = $class;

                }
            },

            addClassOnMouseOver: function ($class, $id, $id2a, $id2b) {

                if (document.getElementById($id)) {


                    document.getElementById($id).onmouseover = function () {
                        document.getElementById($id2a).className = $class;
                        document.getElementById($id2b).className = $class;
                    }
                }
            },
            addClassOnMouseOut: function ($class, $id, $id2a, $id2b) {

                if (document.getElementById($id)) {
                    document.getElementById($id).onmouseout = function () {
                        document.getElementById($id2a).className = $class;
                        document.getElementById($id2b).className = $class;
                    }
                }
            },

            switchMyViews:  function ($args) {

                var viewpath = $location.path().indexOf('view'+ $args[1]);
                var viewpath2 = $location.path().indexOf('view'+ $args[0]);

                if (viewpath === 1) {
                    $rootScope['toggleview' + $args[0]] = true;
                    $rootScope['toggleview' + $args[1]] = false;
                }

                else if (viewpath2 === 1) {
                    $rootScope['toggleview' + $args[1]] = true;
                    $rootScope['toggleview' + $args[0]] = false;
                }
                else {
                    $rootScope['toggleview' + $args[1]] = true;
                    $rootScope['toggleview' + $args[0]] = false;
                }
            },

	        makeLastName: function (string) {
	            var mystring = string.split(' ');
	            if (mystring.length > 1) {
		        return mystring[1];
	            }
	        return string;
            },

	        makeFirstName: function (string) {
	        var mystring = string.split(' ');
	        if (mystring.length > 1) {
		        return mystring[0];
	        }
	        return string;
        }
        };
    }).factory('focus', function ($rootScope, $timeout) {
    //Modified from: http://stackoverflow.com/a/14837021/499167

    return function(name) {
        $timeout(function (){
            $rootScope.$broadcast('focusOn', name);
        });
    }
}).factory('User', function () {
	  //newsletter
	  var user = {
		  email: "",
		  format: "Pdf",
		  realname: function () {
              return  this.email.split('@')[0];
		  }
	  };
	  return {
		  get: function () {
			  return user;
		  }
	  }
  }).factory('mychartsService',function (){

	  return {
		  doughnutChart: function ($id, $data, $text, $customColorSet) {
		  var chart = new CanvasJS.Chart($id, {
			  theme: "theme1",
			  colorSet: $customColorSet,
			  title: {
				  text: $text,
				  fontWeight: "bolder",
				  fontColor: "#0D8AAA",
				  fontSize: 20,
				  padding: 0
			  },
			  data: [{
				  type: "doughnut",
				  indexLabelPlacement: "outside",
				  showInLegend: false,
				  dataPoints: $data
			  }]
		  });
		  chart.render();
	  }
	}
  });


/*
.factory('mySharedService', function ($rootScope) {

	var sharedService = {};
	sharedService.message ='';

	sharedService.prepForBroadcast = function (msg) {
		this.message = msg;
		$rootScope.$broadcast('handleBroadcast')
	};

	return sharedService;

})*/
