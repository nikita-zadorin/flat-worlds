package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.events.MouseEvent;	
	import flash.events.KeyboardEvent;	
	import flash.ui.Keyboard;
	import flash.media.Sound;
	import flash.net.URLRequest;
	
	public class ElementClass extends MovieClip {
		
		var v1:int;
		public var snd1:Sound = new Sound(); 
		public var snd2:Sound = new Sound(); 

		
		public function ElementClass() {
			snd1.load(new URLRequest("./Sounds/Water.mp3"));
			snd2.load(new URLRequest("./Sounds/Fire.mp3"));
			addEventListener(Event.ENTER_FRAME, onEnter);
			this.addEventListener(MouseEvent.CLICK, leftClick);
			this.addEventListener(MouseEvent.RIGHT_CLICK, rightClick);
			this.addEventListener(MouseEvent.ROLL_OVER, rollOver);
			this.addEventListener(MouseEvent.ROLL_OUT, rollOut);
			this.addEventListener(MouseEvent.MOUSE_MOVE, mouseOver);
		}
		public function onEnter(e:Event):void {
			
		}
		public function mouseOver(e:MouseEvent):void {
			Main.indVar = this.currentFrame;
		}
		public function rollOver(e:MouseEvent):void {
			this.roll.alpha = 1;
		}
		public function rollOut(e:MouseEvent):void {
			this.roll.alpha = 0;
		}
		public function leftClick(e:MouseEvent):void {
			 
			 
			
			if(this.currentFrame == 1){
				snd1.play();
				gotoAndPlay(11);
			}
			if(this.currentFrame == 10){
				snd1.play();
				gotoAndPlay(31);
			}
			if(this.currentFrame == 240){
				snd1.play();
				gotoAndPlay(31);
			}
			if(this.currentFrame == 80){
				snd1.play();
				gotoAndPlay(81);
			}
			if(this.currentFrame == 120){
				snd1.play();
				gotoAndPlay(121);
			}
			if(this.currentFrame == 220){
				snd1.play();
				gotoAndPlay(221);
			}
			if(this.currentFrame == 250){
				snd1.play();
				gotoAndPlay(251);
			}
			if(this.currentFrame == 390){
				Main.WinVar = 1;
			}
			//trace("left");
		}
	
		public function rightClick(e:MouseEvent):void {
			
			if(this.currentFrame == 1){
				snd2.play();
				gotoAndPlay(2);
			}
			if(this.currentFrame == 10){
				snd2.play();
				gotoAndPlay(71);
			}
			if(this.currentFrame == 20){
				snd2.play();
				gotoAndPlay(21);
			}
			if(this.currentFrame == 40){
				snd2.play();
				gotoAndPlay(51);
			}
			if(this.currentFrame == 50){
				snd2.play();
				gotoAndPlay(61);
			}
			if(this.currentFrame == 110){
				snd2.play();
				gotoAndPlay(111);
			}
			if(this.currentFrame == 130){
				snd2.play();
				gotoAndPlay(131);
			}
			if(this.currentFrame == 220){
				snd2.play();
				gotoAndPlay(61);
			}
			if(this.currentFrame == 240){
				snd2.play();
				gotoAndPlay(241);
			}
			if(this.currentFrame == 100){
				snd2.play();
				gotoAndPlay(271);
			}
			//trace("right");
		}
		
	}
	
}
