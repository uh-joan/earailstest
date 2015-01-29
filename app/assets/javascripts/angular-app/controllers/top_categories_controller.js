angular
    .module('EA')
    .controller('CategorySizesCtrl', ['CategorySize', '$scope', function (CategorySize, $scope) {

        $scope.categorySizes = CategorySize.query();

    }])