angular
    .module('EA', ['ngRoute', 'ngResource', 'templates'])
    .config(['$routeProvider', function($routeProvider) {
        $routeProvider.
            when('/atop_categories', {
                templateUrl : 'top_categories_list.html',
                controller: 'TopCategoriesCtrl'
            }).
            when('/atop_categories/:topCategoryId', {
                templateUrl : 'top_category_detail.html',
                controller: 'TopCategoryDetailCtrl'
            }).
            otherwise({
                redirectTo: '/atop_categories'
            });
    }]);