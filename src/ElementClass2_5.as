﻿package  {
		
		var ii = 0;
		var xs = 0;
		var ys = 0;
		var toX:int;
		var toY:int;
			if(ii == 0){
				toX = x;
				toY = y;
				ii = 1;
			}
			move2_5();
			check6_1();
		
		public function move2_5():void {
			if(visible == true){
			this.x -= xs;
			this.y -= ys;
			xs = (this.x-toX)/2;
			ys = (this.y-toY)/2;
			if(this.x == toX){
				xs = 0;
				ys = 0;
			}
			}else{
				removeEventListener(Event.ENTER_FRAME, onEnter);
			}
		}
		
		public function check6_1():void {
			for (var i:int = 0; i < Main.mainArray.length; i++) {
				for (var j:int = 0; j < Main.mainArray[i].length; j++) {
					var currentMovie:MovieClip = Main.mainArray[i][j];
					if(currentMovie.currentFrame == 270){
					if (currentMovie.x == x-62 && currentMovie.y == y-31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (currentMovie.x == x-62 && currentMovie.y == y+31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (currentMovie.x == x+62 && currentMovie.y == y-31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (currentMovie.x == x+62 && currentMovie.y == y+31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (Math.round(currentMovie.x) == Math.round(x) && Math.round(currentMovie.y) == Math.round(y)) {
						currentMovie.gotoAndPlay(441);
						ii = 0;
					}
					}
					if(currentMovie.currentFrame == 430){
					if (currentMovie.x == x-62 && currentMovie.y == y-31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (currentMovie.x == x-62 && currentMovie.y == y+31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (currentMovie.x == x+62 && currentMovie.y == y-31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (currentMovie.x == x+62 && currentMovie.y == y+31) {
						toX = currentMovie.x;
						toY = currentMovie.y;
					}
					if (Math.round(currentMovie.x) == Math.round(x) && Math.round(currentMovie.y) == Math.round(y)) {
						currentMovie.gotoAndStop(11);
						ii = 0;
					}
					}
			}
			}
		}