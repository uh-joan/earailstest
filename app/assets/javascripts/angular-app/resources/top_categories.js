angular
.module('EA')
.factory('TopCategory',['$resource', function ($resource){
    return $resource('http://localhost:3000/api/v1/top_categories', {}, {
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