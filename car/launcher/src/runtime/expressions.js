var ls;
(function (ls) {
	ls.MainScene = function() {
		return {
			"%22http%3A%2F%2Flocalhost%3A8080%2Fajax%22": function() { return "http://localhost:8080/ajax" },
			"%22Access-Control-Allow-Origin%3A%20*%22": function() { return "Access-Control-Allow-Origin: *" },
			"%22http%3A%2F%2Flocalhost%3A8080%2Fparking1%2F%22%2BAISprite29.x%2B%22%2F%22%2BAISprite29.y": function() { return "http://localhost:8080/parking1/"+AISprite29.x+"/"+AISprite29.y },
			"%22lastangle%22": function() { return "lastangle" },
			"%22lasty%22": function() { return "lasty" },
			"AISprite29.y": function() { return AISprite29.y },
			"AISprite29": function() { return AISprite29 },
			"%22http%3A%2F%2Flocalhost%3A8080%2Fparking%22": function() { return "http://localhost:8080/parking" },
			"%22http%3A%2F%2Flocalhost%3A8080%2Fparking%2F%22%2B(AISprite29.x%2FAISprite7.width)%2B%22%2F%22%2B(AISprite29.y%2FAISprite7.height)": function() { return "http://localhost:8080/parking/"+(AISprite29.x/AISprite7.width)+"/"+(AISprite29.y/AISprite7.height) },
			"%22POST%22": function() { return "POST" },
			"AISprite29.angle": function() { return AISprite29.angle },
			"%22%22": function() { return "" },
			"%22lastx%22": function() { return "lastx" },
			"AISprite29.x": function() { return AISprite29.x },
			"ls.hours()%2B%22%3A%22%2Bls.minutes()%2B%22%3A%22%2Bls.seconds()%2B%22%20%20%20lon%3A%22%2B%20AISprite29.x%20%2B%22%20lat%3A%22%2BAISprite29.y%2B%22%20%20%20angel%3A%22%2BAISprite29.angle%2B%22%20%20%20%20speed%3A%20%22%2B((AISprite29.x-AISprite29.lastx)%2F(AISprite29.y-AISprite29.lasty))*100%2B%22%5Cn%22": function() { return ls.hours()+":"+ls.minutes()+":"+ls.seconds()+"   lon:"+ AISprite29.x +" lat:"+AISprite29.y+"   angel:"+AISprite29.angle+"    speed: "+((AISprite29.x-AISprite29.lastx)/(AISprite29.y-AISprite29.lasty))*100+"\n" }
		}
	};
})(ls || (ls = {}));