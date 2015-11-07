(function (angular, SockJS, Stomp, _, undefined) {
    angular.module("chatApp.services").service("PrivateChatService", function ($q, $timeout) {

        var service = {}, listener = $q.defer(), socket = {
            client: null,
            stomp: null
        }, messageIds = [];

        service.RECONNECT_TIMEOUT = 30000;
        service.SOCKET_URL = "/chat";
        service.CHAT_TOPIC = "/topic/private/";
        service.CHAT_BROKER = "/app/chat/private/";
        service.CHANNEL = "";
        service.toUserId;
        service.myUserId;
        


        service.receive = function () {
            return listener.promise;
        };

        service.send = function (message) {
            var id = Math.floor(Math.random() * 1000000);
            socket.stomp.send(service.CHAT_BROKER+service.toUserId, {
                priority: 9
            }, JSON.stringify({
                message: message,
                id: id,
                channel:service.CHANNEL,
                userId:4,
                fbId:10202968387529451,
                userName:"Kevin Bayona",
                messageType:"0"
            }));
            messageIds.push(id);
        };

        var reconnect = function () {
            $timeout(function () {
                initialize(service.toUserId,service.myUserId);
            }, this.RECONNECT_TIMEOUT);
        };

        var getMessage = function (data) {
            var message = JSON.parse(data), out = {};
            out.message = message.message;
            out.time = new Date(message.time);
            if (_.contains(messageIds, message.id)) {
                out.self = true;
                messageIds = _.remove(messageIds, message.id);
            }
            return out;
        };

        var startListener = function () {
            socket.stomp.subscribe(service.CHAT_TOPIC+service.myUserId
            , function (data) {
                listener.notify(getMessage(data.body));
            });
        };

        service.initialize = function (toUserId, myUserId) {
            service.toUserId=toUserId;
            service.myUserId=myUserId;
            if (socket.stomp){
                socket.stomp.disconnect();
            }
            socket.client = new SockJS(service.SOCKET_URL);
            socket.stomp = Stomp.over(socket.client);
            socket.stomp.connect({}, startListener);
            socket.stomp.onclose = reconnect;
        };

        //initialize();
        return service;
    });
})(angular, SockJS, Stomp, _);


