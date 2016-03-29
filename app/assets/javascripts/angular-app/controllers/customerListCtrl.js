

app.controller('CustomerListController', function($http){
  var self = this;
  $http.get('customers.json').then(function(res){
     self.customers = res.data;
  });
});
