angular.module('leadTree')
    .controller('AuthCtrl', [
        '$scope',
        '$rootScope',
        '$state',
        'Auth',
        function($scope, $rootScope, $state, Auth) {
            $rootScope.signedIn = Auth.isAuthenticated;
            $rootScope.logout   = Auth.logout;      

            $scope.login = function() {
                
                Auth.login($scope.user).then(function(){
                    $state.go('home');

                    Auth.currentUser().then(function (user){
                        $rootScope.user = user;
                    });
                },
                
                function(error){
                    console.log(error.data);
                });

            };

            $scope.register = function() {
                Auth.register($scope.user).then(function(){
                    $state.go('home');
                },
                function(error) {
                    console.log(error.data);
                });
            };
        }
    ]);