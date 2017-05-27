'use strict'


angular.module('gacApp').factory('userService',['$http','$q', function($http,$q){
	
	var REST_SERVICE_URL = 'http://localhost:8080/GAC/user';
	
	var factory = {
			
			getUser : getUser
	};
	
	return factory;
	
	function getUser(){
		 var deferred = $q.defer();
	        $http.get(REST_SERVICE_URI)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching Users');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	}
	
	
}]);