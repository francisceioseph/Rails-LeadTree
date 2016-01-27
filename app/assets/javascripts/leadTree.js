/**
 * Created by francisco on 15/01/16.
 *
 * Angular JS main file
 *
 */

angular.module('leadTree', ['ui.router', 'templates', 'Devise'])
    .config([
        '$stateProvider',
        '$urlRouterProvider',
        function($stateProvider, $urlRouterProvider){

            $stateProvider
                .state('home', {
                    url: '/home',
                    templateUrl: 'home/_home.html',
                    controller: 'HomeCtrl',
                    bodyClass: 'hold-transition skin-blue sidebar-mini'
                })
                .state('login', {
                    url: '/login',
                    templateUrl: 'auth/_login.html',
                    controller: 'AuthCtrl',
                    bodyClass: 'hold-transition login-page',

                    onEnter: ['$state', 'Auth', function($state, Auth) {
                        Auth.currentUser().then(function (){
                            $state.go('home');
                        })
                    }]
                })
                .state('register', {
                    url: '/register',
                    templateUrl: 'auth/_register.html',
                    controller: 'AuthCtrl',
                    bodyClass: 'hold-transition login-page',

                    onEnter: ['$state', 'Auth', function($state, Auth) {
                        Auth.currentUser().then(function (){
                            $state.go('home');
                        })
                    }]
                });

            $urlRouterProvider.otherwise('home');
        }
    ])
    .run(function($rootScope){
        $rootScope.$on('$stateChangeSuccess', function(event, toState, toParams, fromState, fromParams){
            $rootScope.bodyClass = toState.bodyClass;
            console.log(toState.bodyClass);
            console.log($rootScope.bodyClass);
        });
    });
