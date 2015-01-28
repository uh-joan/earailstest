angular
    .module('EA')
    .controller('TopCategoriesCtrl', ['TopCategory', '$scope', function (TopCategory, $scope) {

        $scope.topCategories = TopCategory.query();

    }])