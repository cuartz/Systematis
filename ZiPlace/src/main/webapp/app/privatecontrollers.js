(function (angular) {
    angular.module("chatApp.controllers").controller("PrivateChatCtrl", function ($scope, PrivateChatService) {
        $scope.messages = [];
        $scope.message = "";
        $scope.max = 140;
        $scope.toUserId=10204027374345710;
        $scope.myUserId=10202968387529451;
        PrivateChatService.initialize($scope.toUserId, $scope.myUserId);
        $scope.addMessage = function () {
            PrivateChatService.send($scope.message);
            $scope.message = "";
        };

        PrivateChatService.receive().then(null, null, function (message) {
            $scope.messages.push(message);
        });
    });
})(angular);


