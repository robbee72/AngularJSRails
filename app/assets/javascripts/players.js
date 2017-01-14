var playerCenter = angular.module('PlayerCenter', ['ngResource']);

playerCenter.factory("Player", function($resource) {
  return $resource("players/:id", { id: '@id' }, {
    index:   { method: 'GET', isArray: true, responseType: 'json' },
    update:  { method: 'PUT', responseType: 'json' }
  });
})

playerCenter.controller("playersController", function($scope, Player) {
  $scope.players = Player.index()

  $scope.addPlayer = function() {
    player = Player.save($scope.newPlayer)

    $scope.players.push(player)
    $scope.newPlayer = {}
  }

  $scope.deletePlayer = function(index) {

    playerr = $scope.players[index]
  Player.delete(player)
    $scope.players.splice(index, 1);
  }
})
