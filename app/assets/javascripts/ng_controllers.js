/* ANGULAR CONTROLLERS */
'use strict';
angular.module('myApp.controllers', [
		'angular-flexslider',
		'ngFitText',
		'ngAnimate',
		'underscore',
		'ngSanitize',
		'ngResource',
		'timer',
		"com.2fdevs.videogular",
		"com.2fdevs.videogular.plugins.controls",
		"com.2fdevs.videogular.plugins.buffering",
		"com.2fdevs.videogular.plugins.overlayplay",
		"com.2fdevs.videogular.plugins.poster",
		'ui.utils',
		'youtube-embed'
		])
.run(function ($rootScope) {
	$rootScope.toggleShowPara = true;
	$rootScope.toggleCaption = true;
	$rootScope.toggleShowPara2 = true;
	$rootScope.toggleCaption2 = true;
	$rootScope.toggleShowPara3 = true;
	$rootScope.toggleCaption3 = true;
	$rootScope.mouseOverLeave = function (arg1, arg2) {
		//home page: arg2=1
		if (arg1 === false && arg2 === 1) {
			$rootScope.toggleShowPara = false;
			$rootScope.toggleCaption = false;
		}
		if (arg1 === true && arg2 === 1) {
			$rootScope.toggleShowPara = true;
			$rootScope.toggleCaption = true;
		}
		//partial8: arg2=2
		if (arg1 === false && arg2 === 2) {
			$rootScope.toggleShowPara2 = false;
			$rootScope.toggleCaption2 = false;
		}
		if (arg1 === true && arg2 === 2) {
			$rootScope.toggleShowPara2 = true;
			$rootScope.toggleCaption2 = true;
		}
		//partial4: arg2=3
		if (arg1 === false && arg2 === 3) {
			$rootScope.toggleShowPara3 = false;
			$rootScope.toggleCaption3 = false;
		}
		if (arg1 === true && arg2 === 3) {
			$rootScope.toggleShowPara3 = true;
			$rootScope.toggleCaption3 = true;
		}
	};
	$rootScope.littleCart = true; //littleCart is the cart-icon on time nav-bar
	$rootScope.toggleProductsNav = false;
	$rootScope.cartMouseOver = function () {
		this.addCartClass = true;
	}; //fade-in-out bg on add-to-cart
	$rootScope.cartMouseLeave = function () {
		this.addCartClass = false;
	}; //fade-in-out bg on add-to-cart
	$rootScope.toggleview6 = false; //Ajax 'bottleneck'
	$rootScope.toggleview9 = true; //Ajax 'bottleneck'
	$rootScope.toggleview5 = false; //Ajax 'bottleneck'
	$rootScope.toggleview15 = true; //Ajax 'bottleneck'
})
.controller('MyCtrlIndex', ['$scope', '$rootScope', '$http',
		'theTimeNowService', '_', 'focus', '$location', '$sce',
		function ($scope, $rootScope, $http, theTimeNowService, _, focus,
			$location, $sce) {
				//====INDEX PAGE CONTROLLER====
				$rootScope.littleCart = true;
				$scope.format_one = "h:mm:ss a";
				$scope.format_two = "fullDate";
				$scope.setMyClass = 'dynamic-clock_one';
				$scope.setMyClass2 = 'dynamic-date_one';
				$scope.timezones_model = false;
				$scope.footerModel = true;
				$scope.toggleLocation = true;
				$scope.cfConvModel = false;
				$scope.longlat = false;
				$scope.toggleLatLongCaption = false;
				$scope.textdate = theTimeNowService.url;
				//====NavBar
				var curremt_location = $location.path(),
viewOnePattern = new RegExp("view1"),
viewEightPattern = new RegExp("view8"),
viewTwoPattern = new RegExp("view2"),
viewThreePattern = new RegExp("view3"),
viewFourPattern = new RegExp("view4"),
viewFivePattern = new RegExp("view5");
				(function activeNav() {
					function activeHelper(arg) {
						return arg.test(curremt_location);
					}
					switch (true) {
						case activeHelper(viewOnePattern):
							$scope.active = 'home';
							break;
						case activeHelper(viewEightPattern):
							$scope.active = 'vieweight';
							break;
						case activeHelper(viewTwoPattern):
							$scope.active = 'viewtwo';
							break;
						case activeHelper(viewThreePattern):
							$scope.active = 'viewthree';
							break;
						case activeHelper(viewFourPattern):
							$scope.active = 'viewfour';
							break;
						case activeHelper(viewFivePattern):
							$scope.active = 'viewfive';
							break;
						default:
							$scope.active = 'home';
					}
				})();
				$rootScope.toggleProductsNav = true;
				$scope.navclick = function (arg) {
					$rootScope.littleCart = true;
					$scope.active = arg;
					if (arg === 'viewfive') {
						return $rootScope.toggleProductsNav = true;
					}
					$rootScope.toggleProductsNav = false;
				};
				//====Time and Date
				//clock
				$scope.clockMouseOver = function () {
					this.clock_image_model = true;
					this.format_one = "h:mm:ss a";
					if (this.setMyClass === 'dynamic-clock_three') {
						this.setMyClass = 'dynamic-clock_four';
					} else {
						this.setMyClass = 'dynamic-clock_one';
						this.current_time_model = true;
					}
				};
				$scope.clockMouseLeave = function () {
					this.clock_image_model = false;
					if (this.setMyClass === 'dynamic-clock_three') {
						this.current_time_model = true;
						this.format_one = "h:mm a";
					} else if (this.setMyClass === 'dynamic-clock_four') {
						this.setMyClass = 'dynamic-clock_three';
						this.format_one = "h:mm a";
					} else {
						this.current_time_model = false;
					}
				};
				$scope.clockOnClick = function () {
					if (this.setMyClass === 'dynamic-clock_three' || this.setMyClass === 'dynamic-clock_four') {
						this.setMyClass = 'dynamic-clock-hidden';
					} else {
						this.format_one = "h:mm a";
						this.setMyClass = 'dynamic-clock_three';
						this.current_time_model = true;
					}
				};
				$scope.timeViewOnClick = function () {
					this.setMyClass = 'dynamic-clock-hidden';
				};
				$scope.gmtMouseOver = function () {
					$scope.showtime = true;
					$scope.toggleLocation = false;
					this.current_time_model = true;
					this.setMyClass += ' dynamic-clock_four';
					this.format_one = "h:mm:ss a";
					if (this.setMyClass === 'dynamic-clock-hidden dynamic-clock_four') {
						this.setMyClass = ' dynamic-clock_three';
						this.setMyClass += ' dynamic-clock_four';
					}
				};
				$scope.gmtMouseLeave = function () {
					$scope.showtime = false;
					$scope.toggleLocation = true;
					if (this.setMyClass === 'dynamic-clock_three' ||
							this.setMyClass === 'dynamic-clock_three dynamic-clock_four') {
								this.setMyClass = 'dynamic-clock_three';
								this.format_one = "h:mm a";
							} else {
								this.current_time_model = false;
							}
				};
				$scope.timeViewMouseOver = function () {
					if (this.setMyClass === 'dynamic-clock_four') {
						this.setMyClass = 'dynamic-clock-hidden';
					} else {
						this.format_one = "h:mm:ss a";
						this.setMyClass = 'dynamic-clock_four';
						this.setMyClass += ' dynamic-clock-underline_color';
					}
				};
				$scope.timeViewMouseLeave = function () {
					this.format_one = "h:mm a";
					if (this.setMyClass === 'dynamic-clock_four dynamic-clock-underline_color') {
						this.setMyClass = 'dynamic-clock_three';
					}
				};
				//date
				$scope.dateMouseOver = function () {
					this.date_image_model = true;
					this.format_two = 'fullDate';
					if (this.setMyClass2 === 'dynamic-date_three') {
						this.setMyClass2 = 'dynamic-date_four';
					} else {
						this.setMyClass2 = 'dynamic-date_one';
						this.current_date_model = true;
					}
				};
				$scope.dateMouseLeave = function () {
					this.date_image_model = false;
					if (this.setMyClass2 === 'dynamic-date_three') {
						this.current_date_model = true;
						this.format_two = 'longDate';
					} else if (this.setMyClass2 === 'dynamic-date_four') {
						this.setMyClass2 = 'dynamic-date_three';
						this.format_two = 'longDate';
					} else {
						this.current_date_model = false;
					}
				};
				$scope.dateOnClick = function () {
					if (this.setMyClass2 === 'dynamic-date_three' || this.setMyClass2 === 'dynamic-date_four') {
						this.setMyClass2 = 'dynamic-date-hidden';
					} else {
						this.format_two = 'longDate';
						this.setMyClass2 = 'dynamic-date_three';
						this.current_date_model = true;
					}
				};
				$scope.dateViewOnClick = function () {
					this.setMyClass2 = 'dynamic-date-hidden';
				};
				$scope.dateViewMouseOver = function () {
					if (this.setMyClass2 === 'dynamic-date_four') {
						this.setMyClass2 = 'dynamic-date-hidden';
					} else {
						this.format_two = 'fullDate';
						this.setMyClass2 = 'dynamic-date_four';
						this.setMyClass2 += ' dynamic-clock-underline_color';
					}
				};
				$scope.dateViewMouseLeave = function () {
					this.format_two = 'longDate';
					if (this.setMyClass2 === 'dynamic-date_four dynamic-clock-underline_color') {
						this.setMyClass2 = 'dynamic-date_three';
					}
				};
				//====Footer
				$scope.toggleClassModel = "toggleOn";
				$scope.footerMouseOver = function () {
					if (this.toggleClassModel === 'toggleOn') {
						this.footerModel = true;
						this.toggleClassModel = 'toggleOff';
						return false;
					}
				};
				$scope.footerOnClick = function () {
					if (this.toggleClassModel === 'toggleOff') {
						this.footerModel = false;
					}
				};
				$scope.footerMouseAway = function () {
					this.toggleClassModel = 'toggleOn';
				};
				//====Fahrenheit to Celsius
				//modified from  OverZealous at StackOverflow
				// see:
				// http://plnkr.co/edit/0n0golhEzU7dokMOkHN6?p=preview
				// http://stackoverflow.com/a/17626761
				$scope.edited = null;
				$scope.markEdited = function (which) {
					$scope.edited = which;
				};
				$scope.$watch('fahrenheit', function (value) {
					if ($scope.edited === 'F') {
						$scope.celsius = (value - 32) * 5.0 / 9.0;
					}
				});
				$scope.$watch('celsius', function (value) {
					if ($scope.edited === 'C') {
						$scope.fahrenheit = value * 9.0 / 5.0 + 32;
					}
				});
				//Celsius to Fahrenheit Button
				$scope.toggleCelciusNav = function () {
					if (this.cfConvModel) {
						return $scope.cfConvModel = false;
					}
					return $scope.cfConvModel = true;
				};
				//==== Latitude and Longitude
				//modified from; http://jsfiddle.net/mrajcok/pEq6X/
				//see also http://techslides.com/angular-js-demos-examples-and-resources/
				//(Location Search with Angular JS and Google)
				$scope.location = '';
				$scope.showToggleButton = false;
				$scope.doSearch = function () {
					if ($scope.location === '') {
						alert('Directive did not update the location property in parent controller.');
					} else {
						var mylocation = $scope.location;
						$scope.mylatitude = mylocation.split(',')[0];
						$scope.mylongitude = mylocation.split(',')[1];
						$scope.toggleLatLongCaption = true;
						$scope.showToggleButton = true;
						$scope.minimizeExpand = false;
					}
				};
				$scope.toggleLatLong = function () {
					focus('focusMe');
					if (this.longlat) {
						return $scope.longlat = false;
					}
					return $scope.longlat = true;
				};
				$scope.toggleView = function () {
					if ($scope.toggleLatLongCaption) {
						this.minimizeExpand = true;
						return this.toggleLatLongCaption = false;
					}
					if ($scope.toggleLatLongCaption === false) {
						this.minimizeExpand = false;
						return this.toggleLatLongCaption = true;
					}
				};
				//==== On focus
				$scope.onFocus = function () {
					this.showToggleButton = false;
					this.toggleLatLongCaption = false;
				};
				//timer
				$scope.timerRunning = false;
				$scope.toggleimg = false;
				$scope.toggleButtonResume = false;
				$scope.showtimer = false;
				$scope.startTimer = function () {
					$scope.$broadcast('timer-start');
					$scope.timerRunning = true;
					$scope.toggleimg = true;
					$scope.toggleButtonResume = false;
				};
				$scope.stopTimer = function () {
					$scope.$broadcast('timer-stop');
					$scope.timerRunning = false;
					$scope.toggleimg = false;
					$scope.toggleButtonResume = true;
				};
				$scope.clearTimer = function () {
					$scope.$broadcast('timer-start');
					$scope.$broadcast('timer-stop');
					$scope.timerRunning = false;
					$scope.toggleButtonResume = false;
				};
				$scope.resumeTimer = function () {
					$scope.$broadcast('timer-resume');
					$scope.timerRunning = true;
					$scope.toggleimg = true;
				};
				$scope.toggletimer = function () {
					if (this.showtimer) {
						return $scope.showtimer = false;
					}
					return $scope.showtimer = true;
				};
				$scope.showLittleCart = function () {
					$rootScope.littleCart = true;
				};
				$scope.hideTheTimer = function () {
					return $scope.showtimer = false;
				};
			}])
.controller('MyCtrl1',['$scope','$http', 'chartsService', 'imgService',
		'flexsliderService', 'functionsService',
		function ($scope, $http, chartsService, imgService,
			flexsliderService, functionsService) {
				//====CONTROLLER FOR PARTIAL ONE ====
				$scope.viewOneMessage = "Natural Skeptics";
				$scope.mydraggable = "true";
				//====Flexslider
				//modified from: https://github.com/thenikso/angular-flexslider
				$scope.slides = flexsliderService.flexdata;
				$scope.slideShowQ = false;
				$scope.slideShowSpeed = 5000;
				$scope.animationSpeed = 1000;
				$scope.pauseOnHover = "true";
				$scope.pauseOnAction = "true";
				$scope.pauseText = "";
				$scope.playText = "";
				$scope.controlNav = "true";
				$scope.animationLoop = "true";
				$scope.prevText = "";
				$scope.nextText = "";
				$scope.pausePlay = "true";
				$scope.directionNav = "true";
				$scope.before = function () {
					$scope.myVar = "flexBeforeClass";
				};
				$scope.after = function () {
					$scope.myVar = "flexAfterClass";
				};
				//====Chart (d3js)
				//modified from http://codepen.io/danielemoraschi/pen/qFmol
				//see also http://techslides.com/angular-js-demos-examples-and-resources/
				//(Bar Chart Example with Angular.js and D3.js)
				$scope.renderYear = (chartsService.dataYears)[0];
				$scope.mydata = (chartsService.dataOne).toString();
				$scope.mydata2 = (chartsService.dataTwo).toString();
				$scope.mydata3 = (chartsService.dataThree).toString();
				$scope.data1model = true;
				$scope.data2model = false;
				$scope.toggleDataOne = function () {
					this.data1model = true;
					this.data2model = false;
					this.data3model = false;
					$scope.renderYear = (chartsService.dataYears)[0];
				};
				$scope.toggleDataTwo = function () {
					this.data2model = true;
					this.data1model = false;
					this.data3model = false;
					$scope.renderYear = $scope.renderYear = (chartsService.dataYears)[1];
				};
				$scope.toggleDataThree = function () {
					this.data3model = true;
					this.data1model = false;
					this.data2model = false;
					//$scope.renderYear= 2014;
					$scope.renderYear = $scope.renderYear = (chartsService.dataYears)[2];
				};
				//==== Image Transition
				$scope.imageSource = imgService.imgBanks.imageSource;
				$scope.imageAltDesc = imgService.imgBanks.imageAltDesc;
				$scope.captionText = imgService.imgBanks.captionText;
				$scope.imageId = imgService.imgBanks.imageId;
				//===== animated gifs
				$scope.toggleGif = false;
				$scope.animgifs = {
					"man": "horrors",
					"mouse": "maus_elefant",
					"witch": "witch"
				};
				//=== Control Display of Cart (_carts partial)
				functionsService.addClassById("displayTrue", 'myPartialCart');
				functionsService.addClassById("class1", 'totalPrice_cartPartial');
				functionsService.addClassById("class1", 'detailedCartIcon');
				functionsService.addClassOnMouseOver("class2", 'myPartialCart',
						'totalPrice_cartPartial', 'detailedCartIcon');
				functionsService.addClassOnMouseOut("class1", 'myPartialCart',
						'totalPrice_cartPartial', 'detailedCartIcon');
			}])
.controller('MyCtrl2', ['$scope','videoService', '$sce', 'functionsService',
		function ($scope, videoService, $sce, functionsService) {
			//====CONTROLLER FOR PARTIAL TWO====
			//==== Videogular ====
			//see  http://videogular.com/
			$scope.viewTwoMessage = "Videos with Videogular";
			$scope.showLargeSmall = function (arg) {
				if (arg === 1) {
					if ($scope.vgToggle === true) {
						$scope.config.width = 720;
						$scope.config.height = 360;
						$scope.makeVideoSmall = true;
						$scope.makeVideoLarge = false;
						$scope.setVgClass = false;
						$scope.vgFalse = "vg-video-two";
						return this.vgToggle = false;
					}
					$scope.config.width = 444;
					$scope.config.height = 228;
					$scope.makeVideoSmall = false;
					$scope.makeVideoLarge = true;
					$scope.setVgClass = true;
					return this.vgToggle = true;
				}
				if (arg === 2) {
					if ($scope.vgToggle2 === true) {
						$scope.config2.width = 720;
						$scope.config2.height = 360;
						$scope.makeVideoSmall2 = true;
						$scope.makeVideoLarge2 = false;
						$scope.setVgClass2 = false;
						$scope.vgFalse2 = "vg-video-two";
						return this.vgToggle2 = false;
					}
					$scope.config2.width = 444;
					$scope.config2.height = 228;
					$scope.makeVideoSmall2 = false;
					$scope.makeVideoLarge2 = true;
					$scope.setVgClass2 = true;
					return this.vgToggle2 = true;
				}
			};
			$scope.onFullScreen = function (arg) {
				if (arg === 1) {
					$scope.setVgClass = false;
					$scope.vgFalse = "vg-video-three";
				}
				if (arg === 2) {
					$scope.setVgClass2 = false;
					$scope.vgFalse2 = "vg-video-three";
				}
			};
			$scope.style = function (arg) {
				if (arg === 1) {                              rfv
					return {
						'height': $scope.config.height + 'px'
					};
				}
				if (arg === 2) {
					return {
						'height': $scope.config2.height + 'px'
					};
				}
			};
			$scope.stretchModes = [{
				label: "None",
					value: "none"
			}, {
				label: "Fit",
					value: "fit"
			}, {
				label: "Fill",
					value: "fill"
			}];
			//====Ocean View Video
			$scope.vgToggle = true;
			$scope.makeVideoSmall = false;
			$scope.makeVideoLarge = true;
			$scope.setVgClass = true;
			$scope.vgFalse = "vg-video-two";
			$scope.setVgControls2Class = true;
			$scope.vgMouseOver = function () {
				$scope.setVgControlsTwoClass = false;
			};
			$scope.vgMouseLeave = function () {
				$scope.setVgControlsTwoClass = true;
			};
			$scope.config = {
				width: 444,
				height: 228,
				autoHide: true,
				autoPlay: false,
				responsive: true,
				stretch: $scope.stretchModes[2],
				sources: [{
					src: $sce.trustAsResourceUrl(videoService.oceanVideo[0].mp4),
					type: "video/mp4"
				}, {
					src: $sce.trustAsResourceUrl(videoService.oceanVideo[0].webm),
					type: "video/webm"
				}, {
					src: $sce.trustAsResourceUrl(videoService.oceanVideo[0].ogg),
					type: "video/ogg"
				}],
				theme: {
					url: "../assets/videogular.css",
					playIcon: "&#xe000;",
					pauseIcon: "&#xe001;",
					volumeLevel3Icon: "&#xe002;",
					volumeLevel2Icon: "&#xe003;",
					volumeLevel1Icon: "&#xe004;",
					volumeLevel0Icon: "&#xe005;",
					muteIcon: "&#xe006;",
					enterFullScreenIcon: "&#xe007;",
					exitFullScreenIcon: "&#xe008;"
				},
				plugins: {
					poster: {
						url: "../assets/oceans-clip.png"
					}
				}
			};
			$scope.vgMouseOver2 = function () {
				$scope.setVgControlsTwoClass2 = false;
			};
			$scope.vgMouseLeave2 = function () {
				$scope.setVgControlsTwoClass2 = true;
			};
			//=== EarthAsDot video
			$scope.vgToggle2 = false;
			$scope.makeVideoSmall2 = true;
			$scope.makeVideoLarge2 = false;
			$scope.setVgClass2 = false;
			$scope.vgFalse2 = "vg-video-two";
			$scope.setVgControlsTwoClass2 = true;
			$scope.config2 = {
				width: 720,
				height: 360,
				autoHide: true,
				autoPlay: false,
				responsive: true,
				stretch: $scope.stretchModes[2],
				sources: [{
					src: $sce.trustAsResourceUrl(videoService.earthAsDotVideo[0].mp4),
					type: "video/mp4"
				}, {
					src: $sce.trustAsResourceUrl(videoService.earthAsDotVideo[0].webm),
					type: "video/webm"
				}, {
					src: $sce.trustAsResourceUrl(videoService.earthAsDotVideo[0].ogg),
					type: "video/ogg"
				}],
				theme: {
					url: "../assets/videogular.css",
					playIcon: "&#xe000;",
					pauseIcon: "&#xe001;",
					volumeLevel3Icon: "&#xe002;",
					volumeLevel2Icon: "&#xe003;",
					volumeLevel1Icon: "&#xe004;",
					volumeLevel0Icon: "&#xe005;",
					muteIcon: "&#xe006;",
					enterFullScreenIcon: "&#xe007;",
					exitFullScreenIcon: "&#xe008;"
				},
				plugins: {
					poster: {
						url: "../assets/videogular.png"
					}
				}
			}; //End Videogular
			//=== Control Display of Cart (_carts partial)
			functionsService.addClassById("displayTrue", 'myPartialCart');
			functionsService.addClassById("class1", 'totalPrice_cartPartial');
			functionsService.addClassById("class1", 'detailedCartIcon');
			functionsService.addClassOnMouseOver("class2", 'myPartialCart',
					'totalPrice_cartPartial', 'detailedCartIcon');
			functionsService.addClassOnMouseOut("class1", 'myPartialCart',
					'totalPrice_cartPartial', 'detailedCartIcon');
			//===== animated gifs
			$scope.toggleGif = false;
			$scope.animgifs = { "pickll": "pickll"};
		}])
.controller('MyCtrl3', ['$scope', '$http', 'instagram', 'functionsService',
		function ($scope, $http, instagram, functionsService) {
			//====CONTROLLER FOR PARTIAL THREE====
			//===Instagram Feeds
			//Modified from http://tutorialzine.com/2013/08/learn-angularjs-5-examples/
			//See also http://techslides.com/angular-js-demos-examples-and-resources/
			$scope.showAjaxLoader1 = true;
			$scope.viewThreeMessage = "Instagram";
			$scope.layout = 'grid';
			$scope.pics = [];
			instagram.fetchPopular(function (data) {
				$scope.pics = data;
				$scope.instagramArrayLength = function () {
					if (_.size(data) > 0) {
						return true;
					}
					return false;
				};
				$scope.showAjaxLoader1 = false;
			});
			//=== Control Display of Cart (_carts partial)
			functionsService.addClassById("displayNone", 'myPartialCart');
		}])
.controller('MyCtrl4', ['$scope', '$http', 'imgService',
		'dublinSliderService', 'functionsService', 'googleService', '$timeout',
		function ($scope, $http, imgService, dublinSliderService, functionsService, googleService, $timeout) {
			//====CONTROLLER FOR PARTIAL FOUR====
			//(Sixties Dublin)
			$scope.viewFourMessage = "Sixties Dublin";
			//====Angular Slider ====
			// Called here dublinslider
			// Modified from:  http://www.script-tutorials.com/photo-gallery-with-angularjs-and-css3/
			// See also: http://www.script-tutorials.com/demos/366/index.html#
			$scope.photos = dublinSliderService.dublinSliderData;
			$scope.showHideCaptions = false;
			$scope.showHideArrows = false;
			$scope._Index = 0;
			$scope.isActive = function (index) {
				return $scope._Index === index;
			};
			// show prev image
			$scope.showPrev = function () {
				$scope._Index = ($scope._Index > 0) ? --$scope._Index : $scope.photos.length - 1;
			};
			// show next image
			$scope.showNext = function () {
				$scope._Index = ($scope._Index < $scope.photos.length - 1) ? ++$scope._Index : 0;
			};
			// show a certain image
			$scope.showPhoto = function (index) {
				$scope._Index = index;
			};
			$scope.mouseOverDubImg = function () {
				$scope.showHideCaptions = true;
				$scope.showHideArrows = true;
				$scope.togglebuttonlist = true; //show the button
			};
			$scope.mouseLeaveDubSlider = function () {
				$scope.showHideCaptions = false;
				$scope.showHideArrows = false;
			};
			$scope.mouseOverSliderNav = function () {
				$scope.showHideArrows = false;
				$scope.showHideCaptions = true;
				$scope.togglebuttonlist = true; //show the button
			};
			//====Google Maps
			$http.get('googleMaps.json').success(function (data, status) {
				$scope.googleAddress = data;
				$scope.GoogleMapsStatus = status;
			});
			$scope.toggleslideshow = true;
			$scope.togglegmap = false;
			$scope.toggleslideshowButton = true;
			$scope.togglegmapButton = false;
			$scope.togglebuttonlist = false;
			// var address = "College Green, Dublin, Ireland";
			var address = googleService.addressOne;
			function FindLocation(address) {
				// Modified from original code written by John Fitzpatrick (M.Sc, NCI)
				var geocoder = new google.maps.Geocoder();
				InitializeMap();
				geocoder.geocode({
					'address': address
				}, function (results, status) {
					if (status === google.maps.GeocoderStatus.OK) {
						map.setCenter(results[0].geometry.location);
						var marker = new google.maps.Marker({
							map: map,
								position: results[0].geometry.location
						});
					} else {
						alert("Not successful: " + status);
					}
				});
			}
			$scope.updateGoogle = function (id) {
				switch (id) {
					case 0:
						address = $scope.googleAddress[0].addressOne;
						break;
					case 1:
						address = $scope.googleAddress[0].addressTwo;
						break;
					case 2:
						address = $scope.googleAddress[0].addressThree;
						break;
					case 3:
						address = $scope.googleAddress[0].addressFour;
						break;
					case 4:
						address = $scope.googleAddress[0].addressFive;
						break;
				}
				FindLocation(address);
			};
			$scope.toggleSliderGmap = function () {
				$scope.toggleslideshow = false;
				$scope.togglegmap = true;
				$scope.toggleslideshowButton = false;
				$scope.togglegmapButton = true;
				$scope.updateGoogle($scope._Index);
			};
			$scope.toggleSliderGmap2 = function () {
				$scope.toggleslideshow = true;
				$scope.togglegmap = false;
				$scope.toggleslideshowButton = true;
				$scope.togglegmapButton = false;
				$scope.updateGoogle($scope._index);
			};
			$scope.mouseOverGoogleMap = function () {
				$scope.togglebuttonlist = true; //show the button
			};
			$scope.mapAndSlide = function () {
				$scope.togglebuttonlist = false;
			};
			//====tab view
			//modified from:http://jsfiddle.net/doktormolle/aAeZw/
			//see also: http://techslides.com/angular-js-demos-examples-and-resources/
			//(Tabs with AngularJS)
			$scope.selected = 'first';
			$scope.toggleOnTabc = true;
			$scope.tabbedImgMouseover = function () {
				$scope.toggleOnTab = false;
			};
			$scope.tabbedImgMouseleave = function () {
				$scope.toggleOnTab = true;
			};
			//===Small Images
			$scope.imageSource3 = imgService.imgSchillachi.imageSource;
			$scope.imageAltDesc3 = imgService.imgSchillachi.imageAltDesc;
			$scope.captionText3 = imgService.imgSchillachi.captionText;
			$scope.imageId3 = imgService.imgSchillachi.imageId;
			//====CanvasJS Live Random Data Chart
			//Modified from:
			// http://canvasjs.com/editor/?id=http://canvasjs.com/example/gallery/dynamic/realtime_line/
			$scope.theme = "theme2";
			var dps = [], // dataPoints
					chart = new CanvasJS.Chart("chartContainer", {
						theme: $scope.theme,
					backgroundColor: "#eee",
					title: {
						text: "Live Random Data",
					fontColor: "#000",
					fontSize: 30,
					fontFamily: 'arial',
					padding: 0
					},
					data: [{
						type: "line",
					dataPoints: dps,
					color: "green"
					}]
					}),
					xVal = 0,
					yVal = 100,
					updateInterval = 20,
					dataLength = 500, // number of dataPoints visible at any point
					updateChart = function (count) {
						count = count || 1;
						// count is number of times loop runs to generate random dataPoints.
						for (var j = 0; j < count; j++) {
							yVal = yVal + Math.round(5 + Math.random() * (-5 - 5));
							dps.push({
								x: xVal,
								y: yVal
							});
							xVal++;
						}
						if (dps.length > dataLength) {
							dps.shift();
						}
						chart.render();
					};
			updateChart(dataLength);
			setInterval(function () {
				updateChart();
			}, updateInterval);
			//=== Control Display of Cart (_carts partial)
			functionsService.addClassById("displayTrue", 'myPartialCart');
			functionsService.addClassById("class1", 'totalPrice_cartPartial');
			functionsService.addClassById("class1", 'detailedCartIcon');
			functionsService.addClassOnMouseOver("class2", 'myPartialCart',
					'totalPrice_cartPartial', 'detailedCartIcon');
			functionsService.addClassOnMouseOut("class1", 'myPartialCart',
					'totalPrice_cartPartial', 'detailedCartIcon');
			//=== animated gifs
			$scope.toggleGif = false;
			$scope.animgifs = {"pickll": "pickll"};
		}])
.controller('MyCtrl5', ['$scope', '$http', 'functionsService', '$rootScope', 'focus',
		function ($scope, $http, functionsService, $rootScope, focus) {
			//====CONTROLLER FOR PARTIAL FIVE ====
			//Products Display page
			//Dynamic Searching
			$rootScope.toggleProductsNav = true;
			$scope.viewFiveMessage = "Dynamic Searching";
			$scope.layout = 'grid2';
			$scope.message = "Dynamic Search";
			$http.get('./skepticsCommodities.json').success(
				function (data, status) {
					$scope.productList = data;
					$scope.CommoditiesStatus = status;
					alert(data);
				}
				);
			$scope.orderProp = 'name';
			$scope.alpha = "Alphabetical";
			$scope.lowestPrice = "Lowest Price";
			$scope.highestPrice = "Highest Price";
			$scope.productCategory = "Category";
			$scope.productCreated_at = "Created At";
			$scope.productUpdatedAt = "Updated At";
			$scope.productid = "Id (low first)";
			$scope.productid2 = "Id (high first)";
			/* $scope.myFirstName = function (string) {
				 return string.split(' ')[0];
				 };*/
			$scope.checked = false;
			$scope.myFirstName = function (string) {
				return functionsService.makeFirstName(string);
			};
			$scope.myLastName = function (string) {
				return functionsService.makeLastName(string);
			};
			$scope.moreAboutProductOnClick = function () {
				this.checked = false;
			};
			//=== Control Display of Cart (_carts partial)
			functionsService.addClassById("displayTrue", 'myPartialCart');
			$scope.addCartClass = false; //for fade-in-out add to cart
			//Ajax bottleneck-2
			$rootScope.toggleview5 = false;
			$rootScope.toggleview15 = true;
			$scope.switchViews = function ($args) {
				functionsService.switchMyViews($args);
			};
			//==Automatic focus on search input box
			focus('focusMe');
		}])
.controller('MyCtrl6', ['$scope', '$rootScope','$http', '$sce','functionsService', 'focus', '$location',
		function ($scope, $rootScope, $http, $sce, functionsService, focus,  $location) {
			//====CONTROLLER FOR Commodities ====
			$rootScope.littleCart = true;
			$scope.orderProp = 'name';
			$scope.alpha = "Alphabetical";
			$scope.lowestPrice = "Lowest Price";
			$scope.highestPrice = "Highest Price";
			$scope.productCategory = "Category";
			$scope.productCreated_at = "Created At";
			$scope.productUpdatedAt = "Updated At";
			$scope.productid = "Id (low first)";
			$scope.productid2 = "Id (high first)";
			$scope.viewSixMessage = "Search Commodities";
			$scope.addCartClass = false; //for fade-in-out add to cart
			$scope.trustedHtml = $sce.trustAsHtml($scope.yourCart);
			//==Ajax bottleneck
			$rootScope.toggleview6 = false;
			$rootScope.toggleview9 = true;
			$scope.switchViews = function ($args) {
				functionsService.switchMyViews($args);
			};
			//==Automatic focus on search input box
			focus('focusMe');
			$scope.myFirstName = function (string) {
				return functionsService.makeFirstName(string);
			};
			$scope.myLastName = function (string) {
				return functionsService.makeLastName(string);
			};
			$http.get('../commodities.json').success(
					function (data, status) {
						$scope.commodities = data;
						$scope.commoditiesStatus = status;
					}
					);
		}
])
.controller('MyCtrl7', ['$scope',
		function ($scope) {
			//====CONTROLLER FOR Commodities/new ====
			$scope.viewSevenMessage = 'New Commodity';
		}
		])
.controller('MyCtrl8', ['$scope', 'imgService', '$http', 'allIrelandDataService', 'functionsService',
		'mychartsService', function ($scope, imgService, $http, allIrelandDataService,
			functionsService, mychartsService) {
				//====CONTROLLER FOR PARTIAL EIGHT====
				//(Blog Menu Item)
				$scope.viewEightMessage = "Blog Page";
				//==tab View
				//modified from:http://jsfiddle.net/doktormolle/aAeZw/
				//see also: http://techslides.com/angular-js-demos-examples-and-resources/
				$scope.selected = 'first';
				//====Flip picture 180 degrees ====
				$scope.pictureFlipper = false;
				$scope.toggleFlipLegend = true;
				$scope.toggleFlipLegendWrapper = "true";
				$scope.obj = {
					"nameone": "James Watson",
"nametwo": "Marie Curie"
				};
				$scope.flipPicture = function () {
					if (this.pictureFlipper) {
						this.toggleFlipLegend = true;
						return this.pictureFlipper = false;
					}
					this.toggleFlipLegend = false;
					return this.pictureFlipper = true;
				};
				$scope.flipPictMouseover = function () {
					this.toggleFlipLegendWrapper = false;
				};
				$scope.flipPictMouseleave = function () {
					this.toggleFlipLegendWrapper = true;
				};
				//====Small Image Transitions ====
				$scope.imageSource2 = imgService.imgPele.imageSource;
				$scope.imageAltDesc2 = imgService.imgPele.imageAltDesc;
				$scope.captionText2 = imgService.imgPele.captionText;
				$scope.imageId2 = imgService.imgPele.imageId;
				//====CanvasJS Doughnut Chart
				//Modified from: http://canvasjs.com/html5-javascript-doughnut-chart/
				var gaaColor = allIrelandDataService.countycolours;
				CanvasJS.addColorSet('customColorSet1', [
						gaaColor.kerry, gaaColor.dublin, gaaColor.galway, gaaColor.cork,
						gaaColor.meath, gaaColor.cavan, gaaColor.wexford, gaaColor.downUlster,
						gaaColor.kildare, gaaColor.tipperary, gaaColor.mayo, gaaColor.offaly,
						gaaColor.louth, gaaColor.tyrone, gaaColor.others
						]);
				CanvasJS.addColorSet('customColorSet2', [
						gaaColor.kilkenny, gaaColor.cork, gaaColor.tipperary,
						gaaColor.limerick, gaaColor.dublin, gaaColor.wexford,
						gaaColor.galway, gaaColor.offaly, gaaColor.clare,
						gaaColor.waterford, gaaColor.others
						]);
				mychartsService.doughnutChart(
						"chartContainer_1",
						allIrelandDataService.footballers,
						"Football All Ireland Winners",
						"customColorSet1"
						);
				mychartsService.doughnutChart(
						"chartContainer_2",
						allIrelandDataService.hurlers,
						"Hurling All Ireland Winners",
						"customColorSet2"
						);
				//===== animated gifs
				$scope.toggleGif = false;
				$scope.animgifs = {
					"cat": "blackcat"
				};
				//=== Control Display of Cart (_carts partial)
				functionsService.addClassById("displayTrue", 'myPartialCart');
				functionsService.addClassById("class1", 'totalPrice_cartPartial');
				functionsService.addClassById("class1", 'detailedCartIcon');
				functionsService.addClassOnMouseOver("class2", 'myPartialCart',
						'totalPrice_cartPartial', 'detailedCartIcon');
				functionsService.addClassOnMouseOut("class1", 'myPartialCart',
						'totalPrice_cartPartial', 'detailedCartIcon');
			}
])
.controller('MyCtrl10', ['$scope',
		function ($scope) {
			//====CONTROLLER FOR Commodities/Edit ====
			$scope.viewMessgeTen = "Editing commodity";
		}
		])
.controller('MyCtrl11', ['$scope',
		function ($scope) {
			//====CONTROLLER FOR 'your_cart' ===
			// carts/show
			$scope.viewMessageEleven = "yourCart";
		}
		])
.controller('MyCtrl12',['$scope', '$http', '$sce',
		'functionsService', '$location', '$rootScope',
		function ($scope, $http, $sce, functionsService, $location, $rootScope) {
			//====CONTROLLER FOR PARTIAL TWELVE====
			//====Detailed Cart
			//!!empty cart button won't render unless SCE method used
			$rootScope.toggleProductsNav = true;
			$scope.viewMessageTwelve = "Detailed Cart";
			$scope.showAjaxLoader3 = true;
			$rootScope.littleCart = false;
			$http.get('your_cart').success(function (data2, status) {
				$scope.yourCart = data2;
				$scope.yourCartStatus = status;
				$scope.trustedHtml = $sce.trustAsHtml($scope.yourCart);
				$scope.myindex = data2.indexOf("&euro;0");
				$scope.anon = function () {
					if($scope.myindex === -1) {
						$scope.showcart = true;
						return $scope.showemptycart = false;
					}
					$scope.showcart = false;
					return $scope.showemptycart = true;
				}();
				$scope.showAjaxLoader3 = false;
			});
			functionsService.addClassById("displayNone", 'myPartialCart');
		}])
.controller('MyCtrl13',['$scope', '$http', 'dribbleService', 'functionsService',
		function ($scope, $http, dribbleService, functionsService) {
			//====CONTROLLER FOR PARTIAL THIRTEEN====
			//====Dribble
			$scope.viewMessageThirteen = "Dribbble";
			$scope.showAjaxLoader2 = true;
			$scope.layout = 'grid';
			$http.jsonp(dribbleService.url).then(function (data) {
				$scope.list = data.data;
				$scope.dribbbleStatus = data.status;
				$scope.showAjaxLoader2 = false;
			});
			functionsService.addClassById("displayNone", 'myPartialCart');
		}])
.controller('MyCtrl14',['$scope', '$http', 'focus', '$rootScope', 'User',
		function ($scope, $http, focus, $rootScope, User) {
			//====CONTROLLER FOR PARTIAL FOURTEEN====
			//====User Data
			$rootScope.littleCart = true;
			$rootScope.toggleProductsNav = false;
			$scope.viewMessageFourteen = "Subscribe to Our Newsletter";
			//JSON data obtained from http://filltext.com/
			var config = {
				params: {
					'rows': 50,
'fname': '{firstName}',
'lname': '{lastName}',
'tel': '{phone|format}',
'id': '{index}',
'email': '{email}',
'ip': '{ip}',
'callback': "JSON_CALLBACK"
				}
			};
			$scope.showAjaxLoader = true;
			$http.jsonp("http://www.filltext.com", config, {}).success(function (data) {
				$scope.users = data;
				$scope.showAjaxLoader = false;
				$scope.fillTextLength = data.length;
			});
			//====newsletter
			$scope.showsubstring =false;
			$scope.echoEmail = true;
			$scope.errorMessage = true;
			$scope.thankYouMessage = false;
			$scope.myCssVar ="newsletter-highlight";
			$scope.step = 1;
			$scope.submitOne = function () {
				$scope.step = 2;
				$scope.step = 2;
				$scope.user.format="Pdf";   //careful!!
			};
			$scope.submitTwo = function () {
				$scope.step = 1;
				$scope.thankYouMessage=true;
				$scope.echoEmail = false;
				$scope.myCssVar ="newsletter-highlight";
			};
			$scope.onFocus = function () {
				$scope.errorMessage = true;
				$scope.thankYouMessage = false;
				$scope.echoEmail = true;
				$scope.user.email="";
			};
			$scope.onBlur = function () {
				$scope.errorMessage = false;
			};
			$scope.$watch('user.format', function() {
				if($scope.user.format == "Html") {
					$scope.myCssVar = 'newsletter-normal';
				}
				if($scope.user.format == "Html and Pdf") {
					$scope.myCssVar = 'newsletter-normal';
					return $scope.showsubstring = true
				}
				return  $scope.showsubstring = false;
			});
			$scope.user = User.get();
			focus('focusMe'); //autofocus on searchbox
		}])
.controller('MyCtrl16',['$scope','$http','$rootScope',
		function ($scope, $http, $rootScope) {
			//====CONTROLLER FOR PARTIAL SIXTEEN ====
			//====BiblioManager
			$rootScope.toggleProductsNav = false;
			$scope.viewMessageSixteen = "Biblio Manager";
			$scope.toggleSelected = false;
			$scope.toggleViewFormat = false;
			$scope.toggleHarvardFormat =false;
			$scope.showSelectedRefs = function () {
				return $scope.toggleSelected=true
			};
			$scope.showAllRefs = function () {
				$scope.toggleSelected=false;
				$scope.toggleHarvardFormat =false;
			};
			$scope.showViewformat = function () {
				$scope.toggleViewFormat=false;
				$scope.toggleHarvardFormat =false;
			};
			$scope.showAllformat = function () {
				$scope.toggleViewFormat=true;
				$scope.toggleHarvardFormat =false;
			};
			$scope.showHarvardformat = function () {
				$scope.toggleViewFormat=false;
				$scope.toggleHarvardFormat=true;
			};
			$scope.viewOneMessage = "Natural Skeptics";
			$scope.orderProp = 'authors';
			$scope.author = "Author - Alphabetical";
			$scope.year = "Year (Latest First)";
			$scope.yearalt = "Year (Earliest First)";
			$scope.productCreated_at = "Created At";
			$scope.productUpdatedAt = "Updated At";
			$scope.productid = "Id (low first)";
			$scope.productid2 = "Id (high first)";
			$scope.publicationtype = "Publication Type";
			$scope.toggleBiblioPanel=false;
			$http.get('../bibliographies.json').success(
					function (data, status) {
						$scope.bibliographies = data;
						$scope.bibliographiesStatus = status;
					}
					);
			$scope.selectedItems = 0;
			$scope.selectedCurentSearchItems = 0;
			$scope.$watch('bibliographies', function(bibliographies){
				var selectedItems = 0;
				angular.forEach(bibliographies, function(bibliography){
					selectedItems += bibliography.checked ? 1 : 0;
				});
				$scope.selectedItems = selectedItems;
			}, true);
			$scope.$watch('filteredBibliographies', function(filteredBibliographies){
				var selectedCurentSearchItems = 0;
				angular.forEach(filteredBibliographies, function(bibliography){
					selectedCurentSearchItems += bibliography.checked ? 1 : 0;
				});
				$scope.selectedCurentSearchItems = selectedCurentSearchItems;
			}, true);
			$scope.reset = function() {
				var tItems = $scope.bibliographies;
				angular.forEach(tItems, function(item) {
					item.checked =  "";
				});
				$scope.toggleSelected = false;
			};
			/*	  $scope.$watch('anattempt', function(){
						alert('I have changed begod')
						}, true);*/
			$scope.tomfn = function (arg) {
				$rootScope.workie = arg
			};
		}])
.controller('MyCtrl17', ['$scope','$rootScope', '$http', '$sce',
		function ($scope, $rootScope, $http,$sce) {
			//====CONTROLLER FOR Bibliographies/Edit ====
			$scope.viewSeventeenMessage = "Editing Bibliography";
			$rootScope.toggleProductsNav = false;
			var tryme ='bibliographies/' +  $rootScope.workie.toString() + '/edit';
			$http.get(tryme).success(
				function (data, status) {
					$scope.ediit = data;
					$scope.trustedHtml = $sce.trustAsHtml($scope.ediit);
				}
				);
			$scope.convertMarkdownToHtml = function () {
				var text = angular.element('#bibliography_abstract').val();
				var converter = new Showdown.converter();
				var html = converter.makeHtml(text);
				angular.element('#abstract_markdown').html(html);
			};
			$scope.$watch('myabstract', function(){
				$scope.convertMarkdownToHtml();
			}, true);
		}
])
.controller('MyCtrl18', ['$scope', '$rootScope',
		function ($scope, $rootScope) {
			//====CONTROLLER FOR Bibliographies/new ====
			$rootScope.toggleProductsNav = false;
			$scope.viewEighteenMessage = 'New Bibliography Entry';
			angular.element("#bibliography_accessdate").mouseover(function() {
				angular.element('#bibliography_accessdate').datepicker({
					dateFormat: 'DD, d  MM, yy'
				});
			});
			/* $rootScope.thomas ="hello";*/
			$scope.convertMarkdownToHtml = function () {
				var text = angular.element('#bibliography_abstract').val();
				var converter = new Showdown.converter();
				var html = converter.makeHtml(text);
				angular.element('#abstract_markdown').html(html);
			};
			$scope.$watch('myabstract', function(){
				$scope.convertMarkdownToHtml();
			}, true);
			/*$scope.$watch('anattempt', function(){
				alert('I have changed begod')
				}, true);*/
		}
]);
/*
	 $scope.init = function (arg) {
	 return $scope.bibliographies = angular.fromJson(arg);
	 };
	 */
//$scope.$watch('bibliographies', function() {
//alert('hello')
// }
// );
/*	    $scope.$watch('productList', function() {
				alert('hello from commodites productList watch in ctrl5');
				}
				);*/
/*	        $scope.initt = function (commodities) {
						return $scope.commodities = angular.fromJson(commodities);
						};*/
/*
	 .controller('MyCtrl19', ['$scope','$rootScope', '$http', '$sce',
	 function ($scope, $rootScope, $http, $sce) {
//====CONTROLLER FOR Bibliographies/Show ====
$scope.viewNinteenMessage = "Show Biblio Ctrl19 message";
$rootScope.toggleProductsNav = false;
var showme ='bibliographies/' +  $rootScope.workie.toString();
$scope.tomfn = function (arg) {
$rootScope.workie = arg
};
$http.get(showme).success(
function (data, status) {
$scope.myshow = data;
$scope.trustedHtml = $sce.trustAsHtml($scope.myshow);
}
);
}
]);*/
