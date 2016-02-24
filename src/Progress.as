package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.events.MouseEvent;	
	import flash.events.KeyboardEvent;	
	import flash.ui.Keyboard;
	
	public class Progress extends MovieClip {
		
		public function Progress() {
			this.progBTN.addEventListener(MouseEvent.CLICK, progClick);
			this.closeBTN.addEventListener(MouseEvent.CLICK, closeClick);
		}
		
		public function progClick(e:MouseEvent):void {
			if(Main.World == 1){
				this.progMC.gotoAndStop(1);
			}
			if(Main.World == 2){
				this.progMC.gotoAndStop(2);
			}
			if(Main.helperInGame.currentFrame == 9){
				Main.helperInGame.gotoAndStop(10);
			}
			if(Main.helperInGame.currentFrame == 12){
				Main.helperInGame.gotoAndStop(13);
			}
			this.gotoAndPlay(2);
		}
		public function closeClick(e:MouseEvent):void {
			this.gotoAndPlay(21);
		}
		
	}
	
}
