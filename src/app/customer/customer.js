/**
 * Customer module
 */
angular.module( 'app.customer', [
  'ui.state'
])

/**
 * Define the route that this module relates to, and the page template and controller that is tied to that route
 */
.config(function config( $stateProvider ) {
  $stateProvider.state( 'customers', {
    url: '/customers',
    views: {
      "main": {
        controller: 'CustomersCtrl',
        templateUrl: 'customer/customers.tpl.html'
      }
    },
    data:{ pageTitle: 'Customers' }
  });
})

/**
 * And of course we define a controller for our route.
 */
 .controller( 'CustomersCtrl', function CustomersController( $scope ) {
   $scope.customers = [
     {name: "hard coded customer 1", email: "hard coded email 1"},
     {name: "hard coded customer 2", email: "hard coded email 2"}
   ];
 });
