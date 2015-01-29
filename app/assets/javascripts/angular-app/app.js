angular
    .module('EA', ['ngRoute', 'ngResource', 'templates'])
    .config(['$routeProvider', function($routeProvider) {
        $routeProvider.
            when('/acategory_sizes', {
                templateUrl : 'category_sizes_list.html',
                controller: 'CategorySizesCtrl'
            }).
            when('/acategory_sizes/:categorySizeId', {
                templateUrl : 'category_size_detail.html',
                controller: 'CategorySizeDetailCtrl'
            }).
            otherwise({
                redirectTo: '/acategory_sizes'
            });
    }]);