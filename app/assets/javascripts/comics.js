var comicsApp = angular.module('comicsApp', ['ngResource']);

comicsApp.controller('ItemsCtrl', ['$scope', 'Item', function ($scope, Item) {
  $scope.orderProp = 'published_at';
  $scope.items = Item.query();
}]);

comicsApp.factory('Item', ['$resource', function ($resource) {
  return $resource('/items');
}]);
