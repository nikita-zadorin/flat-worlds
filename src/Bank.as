package {
    import flash.display.Stage;
	
	import vk.APIConnection;
	import vk.events.CustomEvent;
	
	public class Bank {
		
		private var flashVars: Object;
		private var VK: APIConnection;
        protected var _onPaymentFunction:Function;
        protected var _secondLevelFunction:Function;


        public function Bank(stage:Stage) {
			flashVars = stage.loaderInfo.parameters as Object;
			VK  = new APIConnection(flashVars);
			VK.addEventListener('onOrderSuccess', function(e:CustomEvent): void{
				if (_onPaymentFunction != null) {
                    _onPaymentFunction(1);
                }
			});
			VK.addEventListener('onOrderCancel', function(e:CustomEvent): void{
                if (_onPaymentFunction != null) {
                    _onPaymentFunction(0);
                }
            });
			VK.addEventListener('onOrderFail', function(e:CustomEvent): void{
                if (_onPaymentFunction != null) {
                    _onPaymentFunction(0);
                }
            });
		}

        public function pay(f:Function):void {
            _onPaymentFunction = f;
            VK.callMethod('showOrderBox', { type:'item',item: "second_level"});
        }

        public function ifSecondLevelIsOpened(f:Function): void {
            _secondLevelFunction = f;
            VK.api('storage.get', { key: 'secondlevel'}, storageGetSuccess, onGetError);
        }

        public function openSecondLevel():void {
            VK.api('storage.set', { key: 'secondlevel', value: 1}, storageSetSuccess, onSetError);
        }

        public function showInviteBox():void {
            VK.callMethod('showInviteBox');
        }

        private function storageGetSuccess(data: Object): void {
            if (_secondLevelFunction != null) {
                _secondLevelFunction(data == 1);
            }
        }

        private function onGetError (e:*):void {
        }

        private function storageSetSuccess(data: Object): void {
        }

        private function onSetError (e:*):void {
        }
	}
}