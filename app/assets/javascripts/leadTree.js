/**
 * Created by francisco on 15/01/16.
 *
 * Angular JS main file
 *
 */

angular.module('leadTree', ['ui.router', 'templates'])
    .config([
        '$stateProvider',
        '$urlRouterProvider',
        function($stateProvider, $urlRouterProvider){

            $stateProvider
                .state('home', {
                    url: '/home',
                    templateUrl: 'home/_home.html',
                    controller: 'HomeCtrl'
                });

            $urlRouterProvider.otherwise('home');
        }
    ]);
