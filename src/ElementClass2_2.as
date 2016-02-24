package  {		import flash.display.MovieClip;	import flash.events.Event;		import flash.events.MouseEvent;		import flash.events.KeyboardEvent;		import flash.ui.Keyboard;	import flash.media.Sound;	import flash.net.URLRequest;		public class ElementClass2_2 extends MovieClip {
		
		var ii = 0;
		var toX2_2 = 0;
		var toY2_2 = 0;
		var xs = 0;
		var ys = 0;				public function ElementClass2_2() {			addEventListener(Event.ENTER_FRAME, onEnter);		}		public function onEnter(e:Event):void {
			
			if(x != -100){			if(Main.selected2){				ii = 1;			}
			if(ii == 1){
				move2_2();
			}
			this.x -= xs;
			this.y -= ys;
			if(this.x == toX2_2){
				xs = 0;
				ys = 0;
			}
		}		}
		public function move2_2():void {
			var rr:uint = uint(Math.random()*4);
			//var rr = Math.round(Math.random()*3);
			///trace(rr);
			
			if((this.x == 20 && this.y == 226) || (this.x == 82 && this.y == 195) || (this.x == 144 && this.y == 164) || (this.x == 206 && this.y == 133) || (this.x == 268 && this.y == 102) || (this.x == 330 && this.y == 71)){
				rr = 0;
			}
			if((this.x == 392 && this.y == 40) || (this.x == 454 && this.y == 71) || (this.x == 516 && this.y == 102) || (this.x == 578 && this.y == 133) || (this.x == 640 && this.y == 164) || (this.x == 702 && this.y == 195)){
				rr = 3;
			}
			if((this.x == 392 && this.y == 412) || (this.x == 82 && this.y == 257) || (this.x == 144 && this.y == 288) || (this.x == 206 && this.y == 319) || (this.x == 268 && this.y == 350) || (this.x == 330 && this.y == 381)){
				rr = 1;
			}
			if((this.x == 702 && this.y == 226) || (this.x == 454 && this.y == 381) || (this.x == 516 && this.y == 350) || (this.x == 578 && this.y == 319) || (this.x == 640 && this.y == 288) || (this.x == 702 && this.y == 257)){
				rr = 2;
			}
			if(this.x == 330 && this.y == 195){
				rr = 2;
			}
			if(this.x == 454 && this.y == 195){
				rr = 1;
			}
			if(this.x == 330 && this.y == 257){
				rr = 3;
			}
			if(this.x == 454 && this.y == 257){
				rr = 0;
			}
			
			
			if(rr == 0){ // право-низ
				toX2_2 = this.x + 62;
				toY2_2 = this.y + 31;
			}else if (rr == 1){ // право-верх
				toX2_2 = this.x + 62;
				toY2_2 = this.y - 31;
			}else if (rr == 2){ //лево-верх
				toX2_2 = this.x - 62;
				toY2_2 = this.y - 31;
			}else if (rr == 3){ //лево-низ
				toX2_2 = this.x - 62;
				toY2_2 = this.y + 31;
			}
			xs = (this.x-toX2_2)/2;
			ys = (this.y-toY2_2)/2;
			ii = 0;
		}	}	}