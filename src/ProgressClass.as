package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.events.MouseEvent;	
	import flash.events.KeyboardEvent;	
	import flash.ui.Keyboard;
	
	public class ProgressClass extends MovieClip {
		
		var t = 0;
		var currentAlpha = 1;
		public var buy = 0;
        
		public function ProgressClass() {
			addEventListener(Event.ENTER_FRAME, onEnter);
			this.help.addEventListener(MouseEvent.CLICK, helpClick);
			//this.addEventListener(MouseEvent.RIGHT_CLICK, rightClick);
			
			this.addEventListener(MouseEvent.ROLL_OUT, rollOut);
			//this.addEventListener(MouseEvent.ROLL_OUT, rollOut);
			//this.addEventListener(MouseEvent.MOUSE_MOVE, mouseOver);
		}
		
		public function onEnter(e:Event):void {
				
			var ii = this.currentFrame;
			this.firstRoll.addEventListener(MouseEvent.MOUSE_MOVE, rollOver);
			if(t == 1){
				if (this.currentFrame != 1){
					this.gotoAndStop(currentFrame-1);
				}else{
					t = 0;
				}
			}
		}
		
		public function rollOver(e:MouseEvent):void {
			
			if(t == 0){
				currentAlpha = this.alpha;
				this.alpha = 0.99;
				if(buy == 0){
					this.gotoAndPlay(2);
				}else{
					this.gotoAndPlay(22);
				}
			}
		}
		public function rollOut(e:MouseEvent):void {
			this.alpha = currentAlpha;
			currentAlpha = 0.5;
			t = 1;
		}
		public function helpClick(e:MouseEvent):void {
				if(Main.goldVar>=100){
                    Main.setGoldVarWithHandler(Main.goldVar - 100, function ():void {
                        buy = 1;
                        gotoAndPlay(11);
                        Main.saveProgress(name, parent.name);
                    });
				}else{
					Main.noMoneyVar = 1;
				}
			//this.stop();
		}
	}
	
}
