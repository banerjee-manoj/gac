
gac.controller('homeController',['$scope','userService', function($scope,userService){
	
	console.log('I am in the Home controller.');
}]);




//the below configuration is required for the URL routing of the applications.
gac.config(function($stateProvider, $urlRouterProvider) {
 
 $urlRouterProvider.otherwise('/');
 
 $stateProvider
     
     // HOME STATES AND NESTED VIEWS ========================================
     .state('addCustomer', {
        // url: '/addCustomer',
         templateUrl: './html/customer/addCustomer.html'
     })
     
     
     .state('searchCustomer',{
     	
     	//url:'/searchCustomer',
     	templateUrl:'./html/customer/searchCustomer.html'
     	
     })
     
     
     // ABOUT PAGE AND MULTIPLE NAMED VIEWS =================================
     .state('home', {
         // we'll get to this in a bit
     	url : '/',
     	templateUrl: './html/homeContainer.html'
     })
     
     //About new order page
     .state('newOrder',{
     	//url:'/newOrder',
     	templateUrl:'./html/order/newOrder.html',
     	controller:'newOrderController'
     })
 .state('successMessage',{
 //	url: '/success',
 	templateUrl :'./html/successMessage.html',
 	params: ['message','value'],//:'hi'},
 	controller: 'successController'
 	
 })
	.state('deleteMessage',{
 //	url: '/success',
 	templateUrl :'./html/deleteMessage.html',
 	params: ['message','value'],//:'hi'},
 	controller: 'deleteMessageController'
 	
 })
	
	
 
 .state('moneyDefaulters',{
 	templateUrl :'./html/defaulters/moneyDefaulters.html',
 	controller: 'defaulterController'
 	
 })
 .state('jarDefaulters',{
 	templateUrl :'./html/defaulters/jarDefaulters.html',
 	controller: 'successController'
 	
 })
  .state('editOrder',{
 	templateUrl :'./html/order/editOrder.html',
 	//controller: 'editOrderController'
 	
 })

	 .state('orderBilling',{
 	templateUrl :'./html/order/orderHistory.html',
 	//controller: 'editOrderController'
 	
 })
	
	 .state('showAllCustomer',{
 	templateUrl :'./html/customer/showAllCustomer.html',
 	
 })
	
	 .state('deleteCustomerMessage',{
 	templateUrl :'./html/customer/showAllCustomer.html',
 	
 })
    
	.state('orderDetailsByDate',{
 	templateUrl :'./html/order/OrderDetailsByDt.html',
 	
 })	   
 
 .state('addDocument',{
	 	templateUrl :'./resources/html/addDocument.html',
	 	
	 });	
 
 
 
 
 
 
 
     
});
