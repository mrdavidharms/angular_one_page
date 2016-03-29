

describe( 'AppCtrl', function() {
 var scope;
 beforeEach(angular.mock.module('app'));
  beforeEach(angular.mock.inject(function($rootScope, $controller){
    scope = $rootScope.$new();
    $controller('CustomersCtrl', {$scope: scope});

  }));

  it('Has two customers defined', function(){
    expect(scope.customers.length).toEqual(2);
  });


});
