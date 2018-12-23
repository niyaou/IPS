var ls;
(function (ls) {
	ls.MainScene = function() {
		return {
			"%22http%3A%2F%2Flocalhost%3A8080%2Fparking%22": function() { return "http://localhost:8080/parking" },
			"AISprite29": function() { return AISprite29 },
			"%22POST%22": function() { return "POST" },
			"%22%22": function() { return "" },
			"%22http%3A%2F%2Flocalhost%3A8080%2Fparking%2F%22%2B(AISprite29.x%2FAISprite7.width)%2B%22%2F%22%2B(AISprite29.y%2FAISprite7.height)": function() { return "http://localhost:8080/parking/"+(AISprite29.x/AISprite7.width)+"/"+(AISprite29.y/AISprite7.height) },
			"%22http%3A%2F%2Flocalhost%3A8080%2Fparking1%2F%22%2BAISprite29.x%2B%22%2F%22%2BAISprite29.y": function() { return "http://localhost:8080/parking1/"+AISprite29.x+"/"+AISprite29.y },
			"%22http%3A%2F%2Flocalhost%3A8080%2Fajax%22": function() { return "http://localhost:8080/ajax" },
			"%22Access-Control-Allow-Origin%3A%20*%22": function() { return "Access-Control-Allow-Origin: *" }
		}
	};
})(ls || (ls = {}));