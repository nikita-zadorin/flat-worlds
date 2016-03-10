package {
import flash.display.Stage;
import flash.events.Event;
import flash.events.HTTPStatusEvent;
import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import flash.net.URLVariables;

public class AppEvent{

    private var _stage:Stage;
    private var _flashVars:Object;
    private var _local:Boolean;
    public function AppEvent(stage:Stage) {
        _stage = stage;
        _flashVars = stage.loaderInfo.parameters as Object;
        if (!_flashVars["api_id"]) {
            _local = true;
            return;
        }
    }

    public function sendEvent ():void {
        var loader:URLLoader = new URLLoader();
        var request:URLRequest = new URLRequest("http://www.pioner55.890m.com/flat-worlds/appevent.php");
        request.method=URLRequestMethod.POST;
        var vars:URLVariables = new URLVariables();
        vars['activity_id'] = 1234;
        vars['api_id'] = _flashVars['api_id'];
        vars['viewer_id'] = _flashVars['viewer_id'];
        request.data=vars;
        loader.addEventListener(HTTPStatusEvent.HTTP_STATUS, onError);
        loader.addEventListener(Event.COMPLETE, onComplete);
        loader.load(request);
    }

    private function onError(e:HTTPStatusEvent):void {}
    private function onComplete(e:Event):void {
        var loader:URLLoader = e.target as URLLoader;
        if (loader!=null) {
            loader.data;
        }
    }
}
}
