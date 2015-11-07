<!DOCTYPE HTML>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="favicon.ico"/>
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="assets/font-awesome/font-awesome.css"/>
        <link rel="stylesheet" href="assets/style.css"/>	
        <script src="libs/angular/angular.js"></script>
        <script>
//            function initialize() {
//                var mapCanvas = document.getElementById('map-canvas');
//                var center = new google.maps.LatLng(44.5403, -78.5463);
//                var zoom=4;
//                var mapOptions = {
//                    //zoom: 4,
//                    mapTypeId: google.maps.MapTypeId.ROADMAP
//                }
//                var map = new google.maps.Map(mapCanvas, mapOptions)
//
//
//                var myIcon = new google.maps.MarkerImage("images/map_icon2.png", null, null, null, new google.maps.Size(32, 35));
//                if (navigator.geolocation) {
//                    navigator.geolocation.getCurrentPosition(function (position) {
//                        center = new google.maps.LatLng(position.coords.latitude,
//                                position.coords.longitude);
//                        var marker = new google.maps.Marker({
//                            position: center,
//                            map: map,
//                            icon: myIcon,
//                            //zoom: 12
//                            //title: 'Hello World!'
//                        });
//
//
//                        var infowindow = new google.maps.InfoWindow({
//                            map: map,
//                            position: center,
//                            content: 'This is your current location'
//                        });
//
//                        map.setCenter(center);
//                        map.setZoom(12);
//                        zoom=12;
//                    }, function () {
//                        handleNoGeolocation(true);
//                    });
//                } else {
//                    // Browser doesn't support Geolocation
//                    handleNoGeolocation(false);
//                }
//                map.setCenter(center);
//                map.setZoom(zoom);
//            }
//            google.maps.event.addDomListener(window, 'load', initialize);
//
//            function addMarker(feature) {
//                var marker = new google.maps.Marker({
//                    position: feature.position,
//                    icon: icons[feature.type].icon,
//                    map: map
//                });
//            }





        </script>
    </head>
    <body ng-app="chatApp">

        <table style="width:100%">
            <tr>
   
                <td style="width:40%;vertical-align:top;">
                    <div ng-controller="PrivateChatCtrl" class="container">
                        <form ng-submit="addMessage()" name="messageForm">
                            <input type="text" placeholder="Compose a new message..." ng-model="message" />
                            <div class="channel"><h4>{{toUserId}}</h4></div>
                            <div class="info">
                                <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
                                <button ng-disabled="message.length > max || message.length === 0">Send</button>
                            </div>
                        </form>
                        <hr />
                        <p ng-repeat="message in messages| orderBy:'time':true" class="message">
                            <time>{{message.time| date:'HH:mm'}}</time>
                            <span ng-class="{self: message.self}">{{message.message}}</span>
                        </p>
                    </div>
                </td>
                <td style="width:30%"></td>
            </tr>
        </table>
           
 
        <script src="libs/jquery/jquery.js"></script>
        <script src="libs/bootstrap/bootstrap.js"></script>
        <script src="libs/angular/angular.js"></script>
        <script src="libs/angular-route/angular-route.js"></script>
        <script src="libs/sockjs/sockjs.min.js" type="text/javascript"></script>
        <script src="libs/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script>
        <script src="libs/lodash/dist/lodash.min.js"></script>
        <script src="libs/angular-google-maps/angular-google-maps.js"></script>
        <script src="app/app.js"></script>
        <script src="app/privatecontrollers.js"></script>
        <script src="app/privateservices.js"></script>
        <!--script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js"></script-->
       
    </body>
</html>
