angular
.module('EA')
.factory('CategorySize',['$resource', function ($resource){
    return $resource('http://localhost:3000/api/v1/category_sizes', {}, {
       query : {
           method: 'GET',
           cache: true,
           isArray: true
       }
    });

    //return $resource('/api/v1/top_categories/:id.json', {id: '@id'}, {
    //    update: {
    //        method: 'PUT'
    //    }
    //});
}]);