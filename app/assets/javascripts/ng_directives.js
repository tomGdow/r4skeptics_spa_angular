'use strict';
/* Directives */
angular.module('myApp.directives', []).
directive('appVersion', ['version', function (version) {
	return function (scope, elm, attrs) {
		elm.text(version);
	};
}]).directive('myCurrentTime', ['$interval', 'dateFilter',
	function ($interval, dateFilter) {
		//see https://docs.angularjs.org/guide/directive#creating-a-directive-that-manipulates-the-dom
		function link(scope, element, attrs) {
			var format,
	timeoutId;
function updateTime() {
	element.text(dateFilter(new Date(), format));
}
scope.$watch(attrs.myCurrentTime, function (value) {
	format = value;
	updateTime();
});
element.on('$destroy', function () {
	$interval.cancel(timeoutId);
});
//Start the UI update process; save the timeoutId for cancelling
timeoutId = $interval(function () {
	updateTime();//update DOM
}, 1000);
}
return {
	link: link
};
}]).directive('jqdatepicker', function () {
	return {
		restrict: 'A',
	require: 'ngModel',
	replace:true,
	scope: true,
	link: function (scope, element, attrs, ngModelCtrl) {
		$(element).datepicker({
			dateFormat: 'DD, d  MM, yy',
		onSelect: function (date) {
			scope.date = date;
			scope.$apply();
		}
		});
	}
	};
}).directive('myDraggable', ['$document', function ($document) {
	//see https://docs.angularjs.org/guide/directive#creating-a-directive-that-adds-event-listeners
	return function (scope, element, attr) {
		var startX = 0, startY = 0, x = 0, y = 0;
		element.css(
			{
				order: '1px solid red',
			position: 'relative'
			}
			);
		element.on('mousedown', function (event) {
			//Prevent default dragging of selected content
			event.preventDefault();
			startX = event.pageX - x;
			startY = event.pageY - y;
			$document.on('mousemove', mousemove);
			$document.on('mouseup', mouseup);
		});
		function mousemove(event) {
			y = event.pageY - startY;
			x = event.pageX - startX;
			element.css({
				top: y + 'px',
				left: x + 'px'
			});
		}
		function mouseup() {
			$document.off('mousemove', mousemove);
			$document.off('mouseup', mouseup);
		}
	};
}]).directive('myYoutube', function ($sce) {
	return {
		restrict: 'EA',
	scope: { code: '=' },
	replace: true,
	template: '<div style="height:400px;">' +
	'<iframe style="overflow:hidden;height:100%;width:50%" width="420" height="315" src="{{url}}" frameborder="0" allowfullscreen></iframe></div>',
	link: function (scope) {
		console.log('here');
		scope.$watch('code', function (newVal) {
			if (newVal) {
				scope.url = $sce.trustAsResourceUrl("http://www.youtube.com/embed/" + newVal);
			}
		});
	}
	};
}).directive('bars', function ($parse) {
	return {
		restrict: 'E',
	replace: true,
	template: '<div id="chart"></div>',
	link: function (scope, element, attrs) {
		var data = attrs.data.split(','),
	chart = d3.select('#chart')
	.append("div").attr("class", "chart")
	.selectAll('div')
	.data(data).enter()
	.append("div")
	.transition().ease("elastic")
	.style("width", function (d) {
		return d + "%";
	})
.text(function (d) {
	return d + "%";
});
}
};
}).directive('bars2', function ($parse) {
	return {
		restrict: 'E',
	replace: true,
	template: '<div id="chart2"></div>',
	link: function (scope, element, attrs) {
		var data2 = attrs.data2.split(','),
	chart = d3.select('#chart2')
	.append("div").attr("class", "chart2")
	.selectAll('div')
	.data(data2).enter()
	.append("div")
	.transition().ease("elastic")
	.style("width", function (d) {
		return d + "%";
	})
.text(function (d) {
	return d + "%";
});
}
};
}).directive('bars3', function ($parse) {
	return {
		restrict: 'E',
	replace: true,
	template: '<div id="chart3"></div>',
	link: function (scope, element, attrs) {
		var data3 = attrs.data3.split(','),
	chart = d3.select('#chart3')
	.append("div").attr("class", "chart3")
	.selectAll('div')
	.data(data3).enter()
	.append("div")
	.transition().ease("elastic")
	.style("width", function (d) {
		return d + "%";
	})
.text(function (d) {
	return d + "%";
});
}
};
}).directive('googlePlaces', function () {
	return {
		restrict: 'E',
	replace: true,
	// transclude:true,
	scope: {location: '='},
	template: '<input id="google_places_ac" name="google_places_ac" type="text" class="input-block-level"/>',
	link: function ($scope, elm, attrs) {
		var autocomplete = new google.maps.places.Autocomplete($("#google_places_ac")[0], {});
		google.maps.event.addListener(autocomplete, 'place_changed', function () {
			var place = autocomplete.getPlace();
			$scope.location = place.geometry.location.lat() + ',' + place.geometry.location.lng();
			$scope.$apply();
		});
	}
	}
}).directive('ipsum', function () {
	return {
		scope: {},
	restrict: 'E',
	template: ['<p title ="Click Me">',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
	'Praesent id mollis neque. Phasellus rutrum iaculis ante,',
	'id tincidunt tellus pulvinar vitae. Maecenas sodales mollis nisi sit amet congue.',
	'</p>'].join(''),
	link: function (scope, element, attrs) {
		element.bind('click', function (e) {
			element.toggleClass('ipsum');
		});
	}
	}
}).directive('ipsumlong', function () {
	return {
		scope: {},
restrict: 'E',
template: ['<p title ="Click Me">',
'Duis pharetra, sem in dictum posuere, justo orci vestibulum arcu,',
'vitae lobortis ipsum nibh sed dolor. Vestibulum',
'sodales pulvinar risus vel fermentum.',
'Nunc sit amet eros eget orci euismod imperdiet. Phasellus scelerisque orci',
'non ipsum vestibulum non eleifend.',
'</p>'].join(''),
link: function (scope, element, attrs) {
	element.bind('click', function (e) {
		element.toggleClass('ipsumLong');
	});
}
}
}).directive('ipsumshort', function () {
	return {
		scope: {},
	restrict: 'E',
	template: ['<p title ="Click Me">',
	'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
	'</p>'].join(''),
	link: function (scope, element, attrs) {
		element.bind('click', function (e) {
			element.toggleClass('ipsumShort');
		});
	}
	}
}).directive('skTitle', function () {
	return {
		scope: true,
restrict: 'C',
link: function (scope, element, attrs) {
	scope.skepticsTitle = attrs.first
},
replace: true,
template: "<h2>{{skepticsTitle}}</h2>"
}
}).directive('addtocart', function () {
	return {
		$scope: {commodities: '@'},
	restrict: 'E',
	replace: true,
	template: [
	'<a class ="cartIconFlex icon-cart shopping"',
	'rel="nofollow"',
	'title ="Add to Cart"',
	'ng-mouseover="cartMouseOver()"',
	'ng-mouseleave="cartMouseLeave()"',
	'data-remote="true"',
	'data-method="post"',
	'>',
	'</a>'
	].join('')
	}
})
.directive('pictcart', function () {
	return {
		$scope: {commodities: '@'},
restrict: 'E',
replace: true,
template: [
	'<a ',
'rel="nofollow"',
'title ="Add to Cart"',
'ng-mouseover="cartMouseOver()"',
'ng-mouseleave="cartMouseLeave()"',
'data-remote="true"',
'data-method="post"',
'>',
'<img ng-src="./assets/{{commodity.image_url}}" class="image_transition">',
'</a>'
	].join('')
	}
}).directive('animateGif', function () {
	return {
		$scope: {toggleGif: '@'},
restrict: 'E',
replace: true,
transclude: true,
template: ["<div",
"</div>"].join(''),
link: function (scope, element, attrs) {
	element.bind('mouseover', function (e) {
		scope.toggleGif = attrs.class;
	});
	element.bind('mouseleave', function (e) {
		scope.toggleGif=false;
	});
}
}
}).directive('dancinpicklls', function () {
	return {
		$scope: {},
	restrict: 'E',
	replace: true,
	templateUrl: './home/templatepickll.html'
	}
}).directive('focusOn', function() {
	//Modified from: http://stackoverflow.com/a/14837021/499167
	return function(scope, elem, attr) {
		scope.$on('focusOn', function(e, name) {
			if(name === attr.focusOn) {
				elem[0].focus();
			}
		});
	};
}).directive('spiders', function () {
	return {
		scope:true ,
	restrict: 'AE',
	replace: true,
	templateUrl: './home/templatespiders.html',
	link: function (scope, element, attrs) {
		element.on('mouseover', function (e) {
			angular.element(element.children()[0]).addClass('opacity_zero');
			angular.element(element.children()[1]).removeClass('opacity_zero');
			angular.element(element.children()[1]).addClass(attrs.id);
		});
		element.on('mouseleave', function (e) {
			angular.element(element.children()[1]).addClass('opacity_zero');
			angular.element(element.children()[0]).removeClass('opacity_zero');
		});
	}
	}
}).directive('markdown', function () {
	var converter = new Showdown.converter();
	return {
		restrict: 'A',
link: function (scope, element, attrs) {
	var htmlText = converter.makeHtml(element.text());
	element.html(htmlText);
}
};
});
