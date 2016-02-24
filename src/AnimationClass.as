package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;	
	import flash.events.MouseEvent;	
	
	public class AnimationClass extends MovieClip {

		public function AnimationClass() {
			addEventListener(Event.ENTER_FRAME, onEnter);
		}
		
		public function onEnter(e:Event):void {
			this.nextBTN.addEventListener(MouseEvent.CLICK, nextClick);
		}
		
		public function nextClick(e:MouseEvent):void {
			var f = currentFrame + 1;
			gotoAndPlay(f);

		}
	}
	
}
