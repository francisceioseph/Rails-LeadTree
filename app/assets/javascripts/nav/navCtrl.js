/**
 * Created by francisco on 19/01/16.
 */

angular.module('leadTree')
    .controller('NavCtrl', [
        '$rootScope',
        '$scope',
        'Auth',
        function($scope, $rootScope, Auth){

            $scope.signedIn = $rootScope.signedIn
            $scope.logout   = $rootScope.logout

            Auth.currentUser().then(function (user){
               $scope.user = user;
            });

            $scope.$on('devise:new-registration', function (e, user){
                $scope.user = user;
                console.log('new-registration');
            });

            $scope.$on('devise:login', function (e, user){
                $scope.user = user;
            });

            $scope.$on('devise:logout', function (e, user){
                $scope.user = {};
            });
        }
    ]);
