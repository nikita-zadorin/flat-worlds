package boris {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	import vk.APIConnection;
	import vk.events.CustomEvent;
	
	public class Bank extends MovieClip{
		
		public var b1:SimpleButton;
		public var tf:TextField;
		public var b2:SimpleButton;
		
		private var flashVars: Object;
		private var VK: APIConnection;
		
		public function Bank() {
			b1.addEventListener(MouseEvent.CLICK, onb1Click);
			b2.addEventListener(MouseEvent.CLICK, onb2Click);
			flashVars = stage.loaderInfo.parameters as Object;
			VK  = new APIConnection(flashVars);
			VK.addEventListener('onOrderSuccess', function(e:CustomEvent): void{
				tf.appendText("onOrderSuccess "+e.params[0]+"\n");
			});
			VK.addEventListener('onOrderCancel', function(e:CustomEvent): void{
				tf.appendText("onOrderCancel "+e.params[0]+"\n");
			});
			VK.addEventListener('onOrderFail', function(e:CustomEvent): void{
				tf.appendText("onOrderFail "+e.params[0]+"\n");
			});
			
		}
		
		public function onb1Click (e:*):void {
			
			VK.callMethod('showOrderBox', { type:'item',item: "gold_100new" });
			//VK.api('storage.set', { key: 'gold', value: 5 }, storageSetSuccess, onError);
		}
		
		private function storageSetSuccess(data: Object): void {
			tf.text = "set ok ";
		}
		
		public function onb2Click (e:*):void {
			
			VK.api('storage.get', { key: 'gold' }, storageGetSuccess, onError);
		}
		
		private function storageGetSuccess(data: Object): void {
			tf.text = "you have " + data + " gold coins";
		}
		
		private function onError (e:*):void {
			tf.text = "error " + JSON.stringify(e);
		}
		
		
	}
}