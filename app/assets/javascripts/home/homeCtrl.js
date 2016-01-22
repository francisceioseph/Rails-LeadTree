/**
 * Created by francisco on 15/01/16.
 */

angular.module('leadTree')
    .controller('HomeCtrl', [
        '$scope',

        function($scope) {
            $scope.title = 'LeadTree'
            $scope.subtitle = 'Integrate, Collaborate and Grow Up!'

            console.log($scope.user)
        }
    ]);
