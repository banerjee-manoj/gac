
gac.controller('addDocumentController',['$scope','fileUpload',function($scope,fileUpload){
	
	console.log("I am in the addDocument Controller");
	
	$scope.uploadFile = function(){
        var file = $scope.myFile;
        
        console.log('file is ' );
        console.dir(file);
        
        var uploadUrl = "/GAC/document/uploadFile";
        fileUpload.uploadFileToUrl(file, uploadUrl);
     };
	
}]);