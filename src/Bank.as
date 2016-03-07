package {
import flash.display.Stage;
import vk.APIConnection;
import vk.events.CustomEvent;
	
	public class Bank {
		
		private var flashVars: Object;
		private var VK: APIConnection;
        protected var _onPaymentFunction:Function;
        protected var _local:Boolean = false;
        private var _getValuesFunction:Function;

        public function Bank(stage:Stage) {
			flashVars = stage.loaderInfo.parameters as Object;
            if (!flashVars["api_id"]) {
                _local = true;
                return;
            }
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

        public function buy2level(f:Function):void {
            pay(f);
            if (_local) {
                return;
            }
            VK.callMethod('showOrderBox', { type:'item',item: "second_level"});
        }

        public function buy500(f:Function):void {
            pay(f);
            if (_local) {
                return;
            }
            VK.callMethod('showOrderBox', { type:'item',item: "buyGold500"});
        }

        public function buy2000(f:Function):void {
            pay(f);
            if (_local) {
                return;
            }
            VK.callMethod('showOrderBox', { type:'item',item: "buyGold2000"});
        }

        public function buy5000(f:Function):void {
            pay(f);
            if (_local) {
                return;
            }
            VK.callMethod('showOrderBox', { type:'item',item: "buyGold5000"});
        }

        private function pay(f:Function):void {
            _onPaymentFunction = f;
            if (_local) {
                _onPaymentFunction(1);
                return;
            }
        }

        public function getValues(names:String, f:Function):void {
            _getValuesFunction = f;
            if (_local) {
                _getValuesFunction([{level2opened:1}]);
                return;
            }
            VK.api('storage.get', { keys: names}, getValuesSuccess, onGetError);
        }

        private function getValuesSuccess(data: Object): void {
            if (_getValuesFunction != null) {
                _getValuesFunction(data);
            }
        }

        public function setValue(name:String, value:int):void {
            if (_local) {
                return;
            }
            VK.api('storage.set', { key: name, value: value}, storageSetSuccess, onSetError);
        }

        public function showInviteBox():void {
            if (_local) {
                return;
            }
            VK.callMethod('showInviteBox');
        }

        public function wallPost():void {
            if (_local) {
                return;
            }

            VK.api("wall.post", {  message:'Flat Worlds - наикрутейшая головоломка',
                attachments: "photo-114383972_402379074,http://vk.com/app5089228",
                owner_id: flashVars["viewer_id"]});
        }

        private function onGetError (e:*):void {
        }

        private function storageSetSuccess(data: Object): void {
        }

        private function onSetError (e:*):void {
        }
	}
}