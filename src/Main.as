package {

import flash.display.MovieClip;
	
	import flash.display.StageQuality;
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import flash.events.Event;	
	import flash.events.MouseEvent;	
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	import flash.external.ExternalInterface;
	import flash.events.ProgressEvent;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.ui.Mouse;
	import flash.media.Sound;
    import flash.media.SoundChannel;
    import flash.media.SoundTransform;
	import flash.media.SoundMixer;
	 
	public class Main extends MovieClip {

		//public var element:ElementClass;
		//public var element2:ElementClass2;
		//static public var UFOpos = 0;
		//public var element2_2:ElementClass2_2 = new ElementClass2_2();
		static public var element2_1:ElementClass2_1 = new ElementClass2_1();
		public var element2_3:ElementClass2_3 = new ElementClass2_3();
		public var element2_4:ElementClass2_4 = new ElementClass2_4();
		public var element2_5:ElementClass2_5 = new ElementClass2_5();
		//static public var fly:FlyMC = new FlyMC;
		public var gameSprite:Sprite = new Sprite();
		public var gameSprite1:Sprite = new Sprite();
		public var gameSprite2:Sprite = new Sprite();
		public var gameHelp:Sprite = new Sprite();
		static public var helperInGame:HelperInGame = new HelperInGame();
		static public var helperInGame2:HelperInGame2 = new HelperInGame2();
		public var progress:Progress  = new Progress();
		public var gameField:Sprite = new Sprite();
		public var gameUfo:Sprite = new Sprite();
		public var gameRadia:Sprite = new Sprite();
		public var gameMonster:Sprite = new Sprite();
		static public var select:Select = new Select();	
		static public var cantMove:CantMove = new CantMove();
		public var levels:Levels  = new Levels();
		public var helper:Helper  = new Helper();
		public var inDev:InDev  = new InDev();
		//public var coursor:Coursor  = new Coursor(); 
		public var animation1:Animation  = new Animation();
		public var animation2:Animation2  = new Animation2();
		public var startScreen:StartScreen  = new StartScreen();
		static public var goldVar = 0;
		//public var elementInd:ElementInd = new ElementInd();
		static public var indVar = 0;
		static public var noMoneyVar = 0;
		static public var WinVar = 0;
		static public var GameStarted = 0;
		static public var MouseUp = 0;
		static public var LeftVar = 0;
		static public var RightVar = 0;
		static public var toX2_1 = 392;
		static public var toY2_1 = 226;
		static public var toX2_5 = 0;
		static public var toY2_5 = 0;
		static public var clickCountdown = 15;
		public var mmove = 0;
		
		static public var mainArray:Array = [];
		var newArray:Array = [];
		var ufoArray:Array = [];
		var radiaArray:Array = [];
		var monsterArray:Array = [];
		
		public var MoonOpened = 1;
		static public var World = 1;
		
		static public var opened1 = 0;
		static public var opened2 = 0;
		static public var opened3 = 0;
		static public var opened4 = 0;
		static public var opened5 = 0;
		static public var opened6 = 0;
		static public var opened7 = 0;
		static public var opened8 = 0;
		static public var opened9 = 0;
		static public var opened10 = 0;
		static public var opened11 = 0;
		static public var opened12 = 0;
		static public var opened13 = 0;
		static public var opened14 = 0;
		static public var opened15 = 0;
		static public var opened16 = 0;
		static public var opened17 = 0;
		static public var opened18 = 0;
		static public var opened19 = 0;
		static public var opened20 = 0;
		static public var opened21 = 0;
		static public var opened22 = 0;
		static public var opened23 = 0;
		static public var opened24 = 0;
		static public var opened25 = 0;
		static public var opened26 = 0;
		static public var opened27 = 0;
		static public var opened28 = 0;
		static public var opened29 = 0;
		static public var opened30 = 0;
		static public var opened31 = 0;
		static public var opened32 = 0;
		static public var opened33 = 0;
		static public var opened34 = 0;
		static public var opened35 = 0;
		static public var opened36 = 0;
		static public var opened37 = 0;
		static public var opened38 = 0;
		static public var opened39 = 0;
		static public var opened1_1 = 0;
		static public var opened2_1 = 0;
		static public var opened3_1 = 0;
		static public var opened4_1 = 0;
		static public var opened5_1 = 0;
		static public var opened6_1 = 0;
		static public var opened7_1 = 0;
		static public var opened8_1 = 0;
		static public var opened9_1 = 0;
		static public var opened10_1 = 0;
		static public var opened11_1 = 0;
		static public var opened12_1 = 0;
		static public var opened13_1 = 0;
		static public var opened14_1 = 0;
		static public var opened15_1 = 0;
		static public var opened16_1 = 0;
		static public var opened17_1 = 0;
		static public var opened18_1 = 0;
		static public var opened19_1 = 0;
		static public var opened20_1 = 0;
		static public var opened21_1 = 0;
		static public var opened22_1 = 0;
		static public var opened23_1 = 0;
		static public var opened24_1 = 0;
		static public var opened25_1 = 0;
		static public var opened26_1 = 0;
		static public var opened27_1 = 0;
		static public var opened28_1 = 0;
		static public var opened29_1 = 0;
		static public var opened30_1 = 0;
		static public var opened31_1 = 0;
		static public var opened32_1 = 0;
		static public var opened33_1 = 0;
		static public var opened34_1 = 0;
		static public var opened35_1 = 0;
		static public var opened36_1 = 0;
		public var ufos = 0;
		public var radiations = 0;
		public var monsters = 0;
		static public var selected2 = 0;
		public var level2opened = 0;
        private var _bank:Bank;

		public function Main() {

            _bank = new Bank(stage);
            _bank.ifSecondLevelIsOpened(function (b:Boolean):void {
               if (b) {
                   level2opened = 1;
               }
            });

			progress.progMC.c1.prog7_2.visible = false;
			progress.progMC.c1.prog8_2.visible = false;
			progress.progMC.c1.prog30_2.visible = false;
			progress.progMC.c1.prog36_2.visible = false;
			progress.unmuteBTN.visible = false;
			startScreen.settingsUI.unmuteBTN.visible = false;
			
			for (var n:int = 0; n < 7; n++) {mainArray[n] = [];}
			for (var m:int = 0; m < 49; m++) {newArray[n] = [];}
			addChild(gameSprite);
			addChild(gameSprite1);
			addChild(gameSprite2);
			addChild(gameHelp); 
			gameSprite.addChild(gameField);
			gameSprite1.addChild(element2_1);
			gameSprite.addChild(gameRadia);
			gameSprite.addChild(gameMonster);
			gameRadia.mouseEnabled = false;
			gameRadia.mouseChildren = false;
			gameMonster.mouseEnabled = false;
			gameMonster.mouseChildren = false;
			gameSprite2.addChild(gameUfo);
			gameSprite2.mouseEnabled = false;
			gameSprite2.mouseChildren = false;
			
			gameHelp.addChild(helperInGame);
			helperInGame.visible = true;
			gameHelp.addChild(helperInGame2);
			helperInGame2.visible = false;
			gameHelp.addChild(progress);
			
			//progress.progMC.c1.visible = false;
			//progress.progMC.c12.visible = false;
			
			addChild(helper);
			addChild(levels);
			addChild(inDev);
			inDev.visible = false;
			
			addChild(startScreen);
			addChild(animation1);
			addChild(animation2);

			element2_1.x = -100;
			element2_1.y = -100;
			element2_1.mouseEnabled = false;
			element2_1.mouseChildren = false;
			
			addChild(element2_3);
			element2_3.x = -100;
			element2_3.y = -100;
			
			//addChild(element2_2);
			addChild(select);
			addChild(cantMove);
			//addChild(coursor);
			
			//element2_2.x = -100;
			//element2_2.y = -100;
			//element2_2.mouseEnabled = false;
			//element2_2.mouseChildren = false;
			
			addEventListener(Event.ENTER_FRAME, onEnter);
			
			startScreen.black.mouseEnabled = false;
			startScreen.black.mouseChildren = false;
			//coursor.mouseEnabled = false;
			//coursor.mouseChildren = false;
			startScreen.black.mouseChildren = false;
			animation1.visible = false;
			animation2.visible = false;
			select.visible = false;
			cantMove.visible = false;
			//select.mouseEnabled = false;
			//select.mouseChildren = false
			
			/*gameHelp.addChild(elementInd);
			elementInd.x = 8;
			elementInd.y = 420;*/
			
			//Mouse.hide();
			//coursor.startDrag(true);
			
			
			
			
			element2_1.cl.visible = false;
		}
		
		public function onEnter(e:Event):void {
			
			if(helper.visible == false && World == 1){
				helperInGame.visible = true;
			}else{
				helperInGame.visible = false;
			}
			//stage.addEventListener(MouseEvent.MOUSE_MOVE,mMove);
			
			if(clickCountdown <= 14){
				clickCountdown -= 1;
				//coursor.watch.visible = true;
			}
			if(clickCountdown == 0){
				clickCountdown = 15;
				//coursor.watch.visible = false;
			}
			
			if(selected2 == 1){
				LeftVar=0;
				RightVar=0;
				selected2=0;
			}
			
			if(element2_1.currentFrame == 15){
				element2_1.x  = toX2_1 = 392 - 3*62 + 3*62;
				element2_1.y = toY2_1 = 40 + 3*31 + 3*31;
			}
			
			element2_1.arrows.visible = cantMove.visible;
			
			move2_1();
			
			if(MoonOpened == 1){
				levels.level2.alpha = 1;
			}else{
				levels.level2.alpha = .5;
			}
			
			if(WinVar == 1){
				animation1.gotoAndPlay(2);
				animation1.visible = true;
				GameStarted = 0;
				WinVar = 0;
			}
			if(WinVar == 2){
				inDev.visible = true;
				animation2.gotoAndPlay(2);
				animation2.visible = true;
				levels.gotoAndStop(1);
				levels.alpha = 1;
				levels.visible = true;
				GameStarted = 0;
				WinVar = 0;
			}
			if(WinVar == 11){
				inDev.visible = true;
				GameStarted = 0;
				WinVar = 0;
				levels.gotoAndStop(1);
				levels.alpha = 1;
				levels.visible = true;
				progress.gotoAndStop(1);
				clearFunc();
			}
			
			if(animation1.currentFrame == 615 && animation1.visible == true){
				animation1.gotoAndPlay(1);
				animation1.visible = false;
				GameStarted = 0;
				WinVar = 0;
				levels.gotoAndStop(1);
				levels.alpha = 1;
				levels.visible = true;
				progress.gotoAndStop(1);
				clearFunc();
			}
			
			if(animation2.currentFrame == 330 && animation2.visible == true){
				animation2.gotoAndPlay(1);
				animation2.visible = false;
				inDev.visible = true;
				GameStarted = 0;
				WinVar = 0;
				levels.gotoAndStop(1);
				levels.alpha = 1;
				levels.visible = true;
				progress.gotoAndStop(1);
				clearFunc();
			}
			
			
			if(noMoneyVar == 1){
				progress.noMoney.gotoAndPlay(2);
				Main.noMoneyVar = 0;
			}

			progress.gold.text = goldVar + " золотых";
			
			if(World == 1){
				Indicator.gotoAndStop(indVar);
				Indicator.visible = true;
				Indicator2.visible = false;
				progress.helpAgainBTN.visible = true;
			}
			if(World == 2){
				//trace(indVar);
				Indicator2.gotoAndStop(indVar);
				Indicator2.visible = true;
				Indicator.visible = false;
				progress.helpAgainBTN.visible = false;
			}
			
			//coursorFunc();
			
			if(World == 1){
			progCheck();
			check1(20, 40, 41);
			check1(20, 60, 41);
			check1(20, 150, 41);
			check1(20, 70, 161);
			check1(60, 70, 141);
			check1(50, 70, 171);
			check1(220, 70, 171);
			check1(90, 70, 191);
			check1(260, 70, 261);
			check1(180, 170, 201);
			check1(50, 100, 211);
			check1(10, 140, 231);
			check1(220, 280, 281);
			check1(230, 280, 291);
			check1(180, 150, 321);
			check1(180, 230, 341);
			check1(350, 270, 351);
			
			check2(230, 100, 301);
			check2(290, 280, 311);
			check2(20, 80, 331);
			
			check4(10, 10, 101);
			check4(60, 60, 151);
			check4(10, 70, 181);
			
			check5(20, 50, 220, 230, 91);
			
			check6();
			//check7();
			check8(); //победа портал
			check9(); 
			check10(); //полет на луну
			
			}else if (World == 2){
				progCheck();
				if(clickCountdown == 15){
				
				//check1(1,10,20);
								
				//check6_1(270,100,441,20); // монстр уничтожил триногу
				
				check1_1(); // Открывают соседние клетки
				check1(50,140,291); //чел рядом с шахтой
				//check1(370,140,291); //чел рядом с шахтой 2
				//check1(1,210,281); //радиация на темном
				check1(50,70,431); //мельница
				check1(70,440,60); //очистка грибов
				check1(50,370,381); //сбор грибов
				check1(50,590,521); //база - зенитка
				check1(50,120,291); //склад - ферма
				check1(50,160,291); //склад - теплица
				check1(50,390,291); //склад - грибы
				check1(50,500,571); //завод - скважина
				check1(50,520,571); //завод - газ
				check1(50,300,581); //склад - база
				check1(50,580,581); //завод - база
				check1(50,280,581); //антерна - база

				//check3_1(50,260,501,481); //червь съел исследователя
				
				check3_1(120,270,531, element2_3); //тринога уничтожает ферму
				check3_1(160,270,531, element2_3); //тринога уничтожает теплицу
				check3_1(280,270,531, element2_3); //тринога уничтожает антену
				check3_1(300,270,531, element2_3); //тринога уничтожает склад
				check3_1(440,270,531, element2_3); //тринога уничтожает мельницу
				check3_1(520,270,531, element2_3); //тринога уничтожает газгольдер
				check3_1(500,270,531, element2_3); //тринога уничтожает скважину
				check3_1(590,270,531, element2_3); //тринога уничтожает базу
				check3_1(580,270,531, element2_3); //тринога уничтожает завод
				check3_1(530,270,531, element2_3); //тринога уничтожает зенитку
				check3_1(390,270,531, element2_3); //тринога уничтожает зенитку
				check3_1_1();
			
				check2_1(); //должна быть в конце
				check5_1(); //тринога
				
				check10_1(); //победа на луне
			}
			}
			if(element2_3.currentFrame==1){
				progress.clearBTN.addEventListener(MouseEvent.CLICK, clearClick);
			}
			progress.helpAgainBTN.addEventListener(MouseEvent.CLICK, showHelperAgain);
			//addEventListener(Event.KeyisDown , clearClick);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			startScreen.StartMenu.PlayBTN.addEventListener(MouseEvent.CLICK, playClick);
			startScreen.StartMenu.SettingsBTN.addEventListener(MouseEvent.CLICK, settingsClick);
			startScreen.StartMenu.DevBTN.addEventListener(MouseEvent.CLICK, devClick);
			startScreen.devUI.closeBTN.addEventListener(MouseEvent.CLICK, closeDev);
			startScreen.settingsUI.closeBTN.addEventListener(MouseEvent.CLICK, closeSettings);
			startScreen.devUI.urlBTN.addEventListener(MouseEvent.CLICK, openURL);
			
			startScreen.settingsUI.lowBTN.addEventListener(MouseEvent.CLICK, lowQ);
			startScreen.settingsUI.midBTN.addEventListener(MouseEvent.CLICK, midQ);
			startScreen.settingsUI.hughBTN.addEventListener(MouseEvent.CLICK, highQ);
			
			helper.nextBTN.addEventListener(MouseEvent.CLICK, nextClick);
			//helper.nextRightBTN.addEventListener(MouseEvent.RIGHT_CLICK, nextRightClick);
			helper.rollBTN.addEventListener(MouseEvent.MOUSE_DOWN, downHelp);
			
			if(helper.currentFrame == 21){
				helper.select.BTN.addEventListener(MouseEvent.MOUSE_UP, upHelp);
				helper.select.Right.addEventListener(MouseEvent.MOUSE_UP, upHelp);
				helper.select.Left.addEventListener(MouseEvent.MOUSE_UP, upLeftHelp);
			}
			if(helper.currentFrame == 41){
				helper.select.BTN.addEventListener(MouseEvent.MOUSE_UP, upHelp2);
				helper.select.Right.addEventListener(MouseEvent.MOUSE_UP, upRightHelp);
				helper.select.Left.addEventListener(MouseEvent.MOUSE_UP, upHelp2);
			}
			helper.select.Right.addEventListener(MouseEvent.MOUSE_OVER, rightHelpOver);
			helper.select.Left.addEventListener(MouseEvent.MOUSE_OVER, leftHelpOver);
			helper.select.Right.addEventListener(MouseEvent.MOUSE_OUT, rightHelpOut);
			helper.select.Left.addEventListener(MouseEvent.MOUSE_OUT, leftHelpOut);
			select.Right.addEventListener(MouseEvent.MOUSE_OVER, rightOver);
			select.Left.addEventListener(MouseEvent.MOUSE_OVER, leftOver);
			select.Right.addEventListener(MouseEvent.MOUSE_OUT, rightOut);
			select.Left.addEventListener(MouseEvent.MOUSE_OUT, leftOut);
			progress.menuBTN.addEventListener(MouseEvent.CLICK, mainMenuClick);
			progress.progMC.c1.prog27.addEventListener(MouseEvent.ROLL_OVER, progressLevelsHide);
			progress.progMC.c1.prog9.addEventListener(MouseEvent.ROLL_OVER, progressLevelsHide);
			progress.progMC.c1.prog27.addEventListener(MouseEvent.ROLL_OUT, progressLevelsShow);
			progress.progMC.c1.prog9.addEventListener(MouseEvent.ROLL_OUT, progressLevelsShow);
			
			progress.buyGoldBTN.addEventListener(MouseEvent.CLICK, ShowBuyGold);
			progress.buyGoldUI.closeBTN.addEventListener(MouseEvent.CLICK, HideBuyGold);
			progress.buyGoldUI.buy1000.addEventListener(MouseEvent.CLICK, buyGold1000);
			progress.buyGoldUI.buy5000.addEventListener(MouseEvent.CLICK, buyGold5000);
			progress.buyGoldUI.buy10000.addEventListener(MouseEvent.CLICK, buyGold10000);
			
			progress.invite.addEventListener(MouseEvent.CLICK, inviteClick);
			progress.share.addEventListener(MouseEvent.CLICK, shareClick);
			animation1.invite.addEventListener(MouseEvent.CLICK, inviteClick);
			animation1.share.addEventListener(MouseEvent.CLICK, shareClick);
			animation2.invite.addEventListener(MouseEvent.CLICK, inviteClick);
			animation2.share.addEventListener(MouseEvent.CLICK, shareClick);
			
			inDev.okBTN.addEventListener(MouseEvent.CLICK, okClick);
			if(GameStarted == 1){
				//trace(GameStarted);
				stage.addEventListener(MouseEvent.MOUSE_DOWN, selectFunc);
				stage.addEventListener(MouseEvent.MOUSE_UP, unselectFunc);
				select.Right.addEventListener(MouseEvent.MOUSE_UP, rightUp);
			}
			progress.muteBTN.addEventListener(MouseEvent.CLICK, muteClick);
			progress.unmuteBTN.addEventListener(MouseEvent.CLICK, unmuteClick);
			startScreen.settingsUI.muteBTN.addEventListener(MouseEvent.CLICK, muteClick);
			startScreen.settingsUI.unmuteBTN.addEventListener(MouseEvent.CLICK, unmuteClick);
			levels.level1.addEventListener(MouseEvent.CLICK, level1Click);
			levels.level2.addEventListener(MouseEvent.CLICK, level2Click);
			helper.closeHelp.addEventListener(MouseEvent.CLICK, closeHelp);
			animation1.closeHelp.addEventListener(MouseEvent.CLICK, closeAni);
			animation2.closeHelp.addEventListener(MouseEvent.CLICK, closeAni);
			select.Left.addEventListener(MouseEvent.MOUSE_UP, changeLeftVar);
			select.Right.addEventListener(MouseEvent.MOUSE_UP, changeRightVar);
			levels.buyLevel2MC.buyBTN.addEventListener(MouseEvent.CLICK, buyLevel2);
			levels.buyLevel2MC.closeBTN.addEventListener(MouseEvent.CLICK, closeBuyLevel2);
			//progress.progMC.c1.addEventListener(MouseEvent.MOUSE_OVER, progRoll);
			//gameField.addEventListener(MouseEvent.CLICK, progCheck);
			//progress.progBTN.addEventListener(MouseEvent.CLICK, progCheck);
			//gameField.addEventListener(MouseEvent.RIGHT_CLICK, progCheck);
			//trace(UFOpos);
			if(startScreen.alpha <= 0){
				startScreen.visible = false;
				startScreen.gotoAndStop(82);
			}
			if(levels.currentFrame == 2){
				levels.alpha -= 0.1;
			}
			if(levels.alpha <= 0){
				levels.visible = false;
			}
		}
		
		/*function mMove(event:MouseEvent):void{
				coursor.x = event.stageX;
				coursor.y = event.stageY;
				event.updateAfterEvent();
		}*/
		
		public function lowQ(e:MouseEvent):void{
			stage.quality = StageQuality.LOW;
		}
		public function midQ(e:MouseEvent):void{
			stage.quality = StageQuality.MEDIUM;
		}
		public function highQ(e:MouseEvent):void{
			stage.quality = StageQuality.BEST;
		}
		
		public function settingsClick(e:MouseEvent):void{
			startScreen.settingsUI.visible = true;
		}
		
		public function devClick(e:MouseEvent):void{
			startScreen.devUI.visible = true;
		}	
		
		public function closeDev(e:MouseEvent):void{
			startScreen.devUI.visible = false;
		}
		
		public function closeSettings(e:MouseEvent):void{
			startScreen.settingsUI.visible = false;
		}
		
		public function openURL(e:MouseEvent):void{
			navigateToURL(new URLRequest("https://vk.com/club114383972"));
		}	
		
		public function okClick(e:MouseEvent):void{
			inDev.visible = false;
		}
		
		public function ShowBuyGold(e:MouseEvent):void{
			progress.buyGoldUI.visible = true;
		}
		
		public function HideBuyGold(e:MouseEvent):void{
			progress.buyGoldUI.visible = false;
		}
		
		public function buyGold1000(e:MouseEvent):void{
			goldVar += 1000;
			// за 1 голос
		}
		
		public function buyGold5000(e:MouseEvent):void{
			goldVar += 5000;
			// за 3 голоса
		}
		
		public function buyGold10000(e:MouseEvent):void{
			goldVar += 10000;
			// за 5 голосов
		}
		
		
		public function inviteClick(e:MouseEvent):void{
			trace("invite");
		}
		
		public function shareClick(e:MouseEvent):void{
			trace("share");
		}
		
		public function mainMenuClick(e:MouseEvent):void{
			levels.gotoAndStop(1);
			levels.alpha = 1;
			levels.visible = true;
			progress.gotoAndStop(1);
			clearFunc();
		}
		
		public function buyLevel2(e:MouseEvent):void{
			levels.buyLevel2MC.visible = false;
            _bank.pay(paymentComplete);
		}

        private function paymentComplete(b:Boolean):void {
            if (b) {
                level2opened = 1;
                _bank.openSecondLevel();
            }
        }
		
		public function closeBuyLevel2(e:MouseEvent):void{
			levels.buyLevel2MC.visible = false;
		}
		
		public function move2_1():void{
			
			if(World == 2){
				var xs = (element2_1.x-toX2_1)/2;
				var ys = (element2_1.y-toY2_1)/2;

				element2_1.x -= xs;
				element2_1.y -= ys;
			}
			if(element2_1.x < toX2_1){
				element2_1.cr.scaleX = 1;
				element2_1.cl.scaleX = 1;
			}
			if(element2_1.x > toX2_1){
				element2_1.cr.scaleX = -1;
				element2_1.cl.scaleX = -1;
			}
			
			if(Math.round(element2_1.x) != toX2_1){
				if(mmove == 0){
					element2_1.cr.gotoAndPlay(1);
					element2_1.cl.gotoAndPlay(1);
					element2_1.cl.blast.gotoAndPlay(1);
					mmove = 1;
				}
			}else{
				if(mmove == 1){
					element2_1.cr.gotoAndStop(2);
					element2_1.cl.gotoAndStop(6);
					mmove = 0;
				}
			}
			if(element2_1.currentFrame == 1){
				element2_1.cr.visible = true;
			}
		}
		
		public function showHelperAgain(e:MouseEvent):void{
			GameStarted = 0;
			helper.visible = true;
			helperInGame.visible = false;
			helper.gotoAndPlay(1);
			helper.firstHelper.gotoAndPlay(1);
		}
		
		public function changeLeftVar(e:MouseEvent):void{
			LeftVar = 1;
			//element2_1.gotoAndStop(2);
		}
		public function changeRightVar(e:MouseEvent):void{			
			RightVar = 1;
			//element2_1.gotoAndStop(1);
		}
		
		public function createUFO(XX, YY):void {		
			var element2_2:ElementClass2_2 = new ElementClass2_2();
			gameUfo.addChild(element2_2);
			element2_2.x = XX;
			element2_2.y = YY;	
			ufoArray[ufos] = element2_2;
			ufos ++;
		}
		
		public function selectFunc(e:MouseEvent):void{
			//select.x = e.stageX;
			//select.y = e.stageY;
			//select.visible = true;
		}
		public function rightHelpOver(e:MouseEvent):void{
			helper.select.Right.alpha = 1;
		}
		public function leftHelpOver(e:MouseEvent):void{
			helper.select.Left.alpha = 	1;
		}
		public function rightHelpOut(e:MouseEvent):void{
			helper.select.Right.alpha = .7;
		}
		public function leftHelpOut(e:MouseEvent):void{
			helper.select.Left.alpha = .7;
		}
		public function rightOver(e:MouseEvent):void{
			select.Right.alpha = 1;
		}
		public function leftOver(e:MouseEvent):void{
			select.Left.alpha = 1;
		}
		public function rightOut(e:MouseEvent):void{
			select.Right.alpha = .7;
		}
		public function leftOut(e:MouseEvent):void{
			select.Left.alpha = .7;
		}
		
		
		public function downHelp(e:MouseEvent):void{
			helper.select.visible = true;
			var f = helper.currentFrame + 1;
			helper.gotoAndStop(f);
			
		}
		public function upLeftHelp(e:MouseEvent):void{
			helper.select.visible = false;
			helper.gotoAndPlay(31);
		}
		public function upRightHelp(e:MouseEvent):void{
			helper.select.visible = false;
			helper.gotoAndPlay(42);
		}
		public function upHelp(e:MouseEvent):void{
			helper.select.visible = false;
			helper.gotoAndPlay(20);
			helper.firstHelper.gotoAndPlay("f3_2");
		}
		public function upHelp2(e:MouseEvent):void{
			helper.select.visible = false;
			helper.gotoAndPlay(40);
		}
		
		public function unselectFunc(e:MouseEvent):void{
			select.visible = false;
			cantMove.visible = false;
		}
		
		public function rightUp(e:MouseEvent):void{
			select.visible = false;
			cantMove.visible = false;
		}
		
		public function muteClick(e:MouseEvent):void{
			progress.unmuteBTN.visible = true;
			startScreen.settingsUI.unmuteBTN.visible = true;
			SoundMixer.soundTransform = new SoundTransform(0);
		}
		
		public function unmuteClick(e:MouseEvent):void{
			startScreen.settingsUI.unmuteBTN.visible = false;
			progress.unmuteBTN.visible = false;
			SoundMixer.soundTransform = new SoundTransform(1);
		}
		
		public function closeAni(e:MouseEvent):void{
			animation1.visible = false;
			animation2.visible = false;
			clearFunc();
			createWorld();
		}
		
		public function progressLevelsHide(e:MouseEvent):void{
			progress.progMC.c1.prog7.visible = false;
			progress.progMC.c1.prog8.visible = false;
			progress.progMC.c1.prog30.visible = false;
			progress.progMC.c1.prog36.visible = false;
			progress.progMC.c1.prog7_2.visible = true;
			progress.progMC.c1.prog8_2.visible = true;
			progress.progMC.c1.prog30_2.visible = true;
			progress.progMC.c1.prog36_2.visible = true;
		}
		public function progressLevelsShow(e:MouseEvent):void{
			progress.progMC.c1.prog7.visible = true;
			progress.progMC.c1.prog8.visible = true;
			progress.progMC.c1.prog30.visible = true;
			progress.progMC.c1.prog36.visible = true;
			progress.progMC.c1.prog7_2.visible = false;
			progress.progMC.c1.prog8_2.visible = false;
			progress.progMC.c1.prog30_2.visible = false;
			progress.progMC.c1.prog36_2.visible = false;
		}
		
		/*public function coursorFunc():void{ 
			if(indVar == 70 || indVar == 140 || indVar == 150 || indVar == 160 || indVar == 170 || indVar == 200 || indVar == 210 || indVar == 270 || indVar == 280 || indVar == 290 || indVar == 300 || indVar == 310 || indVar == 320 || indVar == 330 || indVar == 360 || indVar == 380 || indVar == 390){
				coursor.gotoAndStop(2);
			}else if(coursor.currentFrame != 1){
				coursor.gotoAndStop(1);
			}
		}*/
		
		public function nextClick(e:MouseEvent):void {
			trace("helper");
			//trace("nextClick");
			var f = helper.currentFrame + 1;
			helper.gotoAndPlay(f);
		}
		
		public function nextRightClick(e:MouseEvent):void {
			var f = helper.currentFrame + 1;
			helper.gotoAndPlay(f);
		}
		
		public function closeHelp(e:MouseEvent):void {
			helperInGame.visible = true;
			closeHelpFunc();
		}
		
		public function closeHelpFunc():void {
			GameStarted = 1;
			helper.visible = false;
		}
		
		public function level1Click(e:MouseEvent):void {
			helper.firstHelper.gotoAndPlay(1);
			levels.gotoAndStop(2);
			World = 1;
			helperInGame2.visible = false;
			createWorld();
		}
		public function level2Click(e:MouseEvent):void {
			if(level2opened == 1){
				helper.firstHelper.gotoAndPlay(1);
				levels.gotoAndStop(2);
				World = 2;
				helperInGame2.visible = true;
				helperInGame.visible = false;
				createWorld();
			}else{
				levels.buyLevel2MC.visible = true;
			}
		}
		
		public function createWorld():void{
			if(World == 1){
				element2_1.x = -100;
				element2_1.y = -100;
				select.Right.gotoAndStop(1);
				select.Left.gotoAndStop(1);
			for (var i = 0; i < 6; i++) {
				for (var j = 0; j < 6; j++) {
					var element:ElementClass = new ElementClass();
					//gameField.removeChild(element);
					gameField.addChild(element);
					element.x = 392 - j*72 + i*72;
					element.y = 40 + j*36 + i*36;
					mainArray[i][j] = element;
				}
			}
			}else if(World == 2){
				element2_1.x = 392 - 3*62 + 3*62;
				element2_1.y = 40 + 3*31 + 3*31;
				select.Right.gotoAndStop(2);
				select.Left.gotoAndStop(2);
				//helper.visible = false;
				closeHelpFunc();
				//helper.gotoAndStop(159);
			for (var r = 0; r < 7; r++) {
				for (var t = 0; t < 7; t++) {
					var element2:ElementClass2 = new ElementClass2();
					gameField.addChild(element2);
					element2.x = 392 - t*62 + r*62;
					element2.y = 40 + t*31 + r*31;
					element2.gotoAndStop(1);
					mainArray[r][t] = element2;
					if(r == 3 && t == 3){
						element2.gotoAndStop(10);
					}
				}
			}
			}
		}
		
		public function keyDown(e:KeyboardEvent):void {
			if(e.keyCode == Keyboard.SPACE && startScreen.currentFrame <= 80){
				startScreen.gotoAndStop(100);
				startScreen.alpha = 0;
			}
		}
		
		public function playClick(e:MouseEvent):void{
			startScreen.gotoAndStop(100);
				startScreen.alpha = 0;
		}
		
		public function progCheck():void{
			
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
						if(World == 1){
						if(currentMovie.currentFrame == 10){
								if(progress.progMC.c1.prog1.alpha == 0.5){
									if(opened1 == 0){
										goldVar += 10;
										opened1 = 1;
										plusFunk();
									}
								progress.progMC.c1.prog1.alpha = 1;
								progress.progMC.c1.prog1.v.alpha = 1;
								progress.progMC.c1.prog1.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 20){
								if(progress.progMC.c1.prog2.alpha == 0.5){
									if(opened2 == 0){
									goldVar += 10;
									opened2 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog2.alpha = 1;
								progress.progMC.c1.prog2.v.alpha = 1;
								progress.progMC.c1.prog2.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 40){
								if(progress.progMC.c1.prog3.alpha == 0.5){
									if(opened3 == 0){
									goldVar += 10;
									opened3 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog3.alpha = 1;
								progress.progMC.c1.prog3.v.alpha = 1;
									progress.progMC.c1.prog3.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 50){
								if(progress.progMC.c1.prog4.alpha == 0.5){
									if(opened4 == 0){
									goldVar += 10;
									opened4 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog4.alpha = 1;
								progress.progMC.c1.prog4.v.alpha = 1;
									progress.progMC.c1.prog4.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 60){
								if(progress.progMC.c1.prog5.alpha == 0.5){
									if(opened5 == 0){
									goldVar += 10;
									opened5 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog5.alpha = 1;
								progress.progMC.c1.prog5.v.alpha = 1;
									progress.progMC.c1.prog5.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 70){
								if(progress.progMC.c1.prog6.alpha == 0.5){
									if(opened6 == 0){
									goldVar += 10;
									opened6 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog6.alpha = 1;
								progress.progMC.c1.prog6.v.alpha = 1;
									progress.progMC.c1.prog6.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 80){
								if(progress.progMC.c1.prog7.alpha == 0.5){
									if(opened7 == 0){
									goldVar += 10;
									opened7 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog7.alpha = 1;
								progress.progMC.c1.prog7.v.alpha = 1;
								progress.progMC.c1.prog7_2.alpha = 1;
								progress.progMC.c1.prog7_2.v.alpha = 1;
									progress.progMC.c1.prog7.gotoAndPlay(21);
									progress.progMC.c1.prog7_2.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 90){
								if(progress.progMC.c1.prog8.alpha == 0.5){
									if(opened8 == 0){
									goldVar += 10;
									opened8 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog8.alpha = 1;
								progress.progMC.c1.prog8.v.alpha = 1;
								progress.progMC.c1.prog8_2.alpha = 1;
								progress.progMC.c1.prog8_2.v.alpha = 1;
									progress.progMC.c1.prog8.gotoAndPlay(21);
									progress.progMC.c1.prog8_2.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 100){
								if(progress.progMC.c1.prog9.alpha == 0.5){
									if(opened9 == 0){
									goldVar += 10;
									opened9 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog9.alpha = 1;
								progress.progMC.c1.prog9.v.alpha = 1;
									progress.progMC.c1.prog9.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 110){
								if(progress.progMC.c1.prog10.alpha == 0.5){
									if(opened10 == 0){
									goldVar += 10;
									opened10 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog10.alpha = 1;
								progress.progMC.c1.prog10.v.alpha = 1;
									progress.progMC.c1.prog10.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 120){
								if(progress.progMC.c1.prog11.alpha == 0.5){
									if(opened11 == 0){
									goldVar += 10;
									opened11 = 1;
									plusFunk();
									}
									
								progress.progMC.c1.prog11.alpha = 1;
								progress.progMC.c1.prog11.v.alpha = 1;
									progress.progMC.c1.prog11.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 130){			
								if(progress.progMC.c1.prog12.alpha == 0.5){
									if(opened12 == 0){
									goldVar += 10;
									opened12 = 1;
									plusFunk();
									}
									
								progress.progMC.c1.prog12.alpha = 1;
								progress.progMC.c1.prog12.v.alpha = 1;
									progress.progMC.c1.prog12.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 140){
								if(progress.progMC.c1.prog13.alpha == 0.5){
									if(opened13 == 0){
									goldVar += 10;
									opened13 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog13.alpha = 1;
								progress.progMC.c1.prog13.v.alpha = 1;
									progress.progMC.c1.prog13.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 150){
								if(progress.progMC.c1.prog14.alpha == 0.5){
									if(opened14 == 0){
									goldVar += 10;
									opened14 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog14.alpha = 1;
								progress.progMC.c1.prog14.v.alpha = 1;
									progress.progMC.c1.prog14.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 160){	
								if(progress.progMC.c1.prog15.alpha == 0.5){
									if(opened15 == 0){
									goldVar += 10;
									opened15 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog15.alpha = 1;
								progress.progMC.c1.prog15.v.alpha = 1;
									progress.progMC.c1.prog15.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 170){
								if(progress.progMC.c1.prog16.alpha == 0.5){
									if(opened16 == 0){
									goldVar += 10;
									opened16 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog16.alpha = 1;
								progress.progMC.c1.prog16.v.alpha = 1;
									progress.progMC.c1.prog16.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 180){
								if(progress.progMC.c1.prog17.alpha == 0.5){
									if(opened17 == 0){
									goldVar += 10;
									opened17 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog17.alpha = 1;
								progress.progMC.c1.prog17.v.alpha = 1;
									progress.progMC.c1.prog17.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 190){
								if(progress.progMC.c1.prog18.alpha == 0.5){
									if(opened18 == 0){
									goldVar += 10;
									opened18 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog18.alpha = 1;
								progress.progMC.c1.prog18.v.alpha = 1;
									progress.progMC.c1.prog18.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 200){
								if(progress.progMC.c1.prog19.alpha == 0.5){
									if(opened19 == 0){
									goldVar += 10;
									opened19 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog19.alpha = 1;
								progress.progMC.c1.prog19.v.alpha = 1;
									progress.progMC.c1.prog19.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 210){
								if(progress.progMC.c1.prog20.alpha == 0.5){
									if(opened20 == 0){
									goldVar += 10;
									opened20 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog20.alpha = 1;
								progress.progMC.c1.prog20.v.alpha = 1;
									progress.progMC.c1.prog20.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 230){
								if(progress.progMC.c1.prog21.alpha == 0.5){
									if(opened21 == 0){
									goldVar += 10;
									opened21 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog21.alpha = 1;
								progress.progMC.c1.prog21.v.alpha = 1;
									progress.progMC.c1.prog21.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 250){
								if(progress.progMC.c1.prog22.alpha == 0.5){
									if(opened22 == 0){
									goldVar += 10;
									opened22 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog22.alpha = 1;
								progress.progMC.c1.prog36.alpha = 1;
								progress.progMC.c1.prog36_2.alpha = 1;
								progress.progMC.c1.prog22.v.alpha = 1;
								progress.progMC.c1.prog36.v.alpha = 1;
								progress.progMC.c1.prog36_2.v.alpha = 1;
									progress.progMC.c1.prog22.gotoAndPlay(21);
									progress.progMC.c1.prog36.gotoAndPlay(21);
									progress.progMC.c1.prog36_2.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 260){
								if(progress.progMC.c1.prog23.alpha == 0.5){
									if(opened23 == 0){
									goldVar += 10;
									opened23 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog23.alpha = 1;
								progress.progMC.c1.prog23.v.alpha = 1;
									progress.progMC.c1.prog23.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 270){
								if(progress.progMC.c1.prog24.alpha == 0.5){
									if(opened24 == 0){
									goldVar += 10;
									opened24 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog24.alpha = 1;
								progress.progMC.c1.prog24.v.alpha = 1;
									progress.progMC.c1.prog24.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 280){
								if(progress.progMC.c1.prog25.alpha == 0.5){
									if(opened25 == 0){
									goldVar += 10;
									opened25 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog25.alpha = 1;
								progress.progMC.c1.prog25.v.alpha = 1;
									progress.progMC.c1.prog25.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 290){
								if(progress.progMC.c1.prog26.alpha == 0.5){
									if(opened26 == 0){
									goldVar += 10;
									opened26 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog26.alpha = 1;
								progress.progMC.c1.prog26.v.alpha = 1;
									progress.progMC.c1.prog26.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 300){
								if(progress.progMC.c1.prog26.alpha == 0.5){
									if(opened26 == 0){
									goldVar += 10;
									opened26 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog26.alpha = 1;
								progress.progMC.c1.prog26.v.alpha = 1;
									progress.progMC.c1.prog26.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 310){
								if(progress.progMC.c1.prog27.alpha == 0.5){
									if(opened27 == 0){
									goldVar += 10;
									opened27 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog27.alpha = 1;
								progress.progMC.c1.prog27.v.alpha = 1;
									progress.progMC.c1.prog27.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 320){
								if(progress.progMC.c1.prog28.alpha == 0.5){
									if(opened28 == 0){
									goldVar += 10;
									opened28 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog28.alpha = 1;
								progress.progMC.c1.prog28.v.alpha = 1;
									progress.progMC.c1.prog28.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 330){
								if(progress.progMC.c1.prog29.alpha == 0.5){
									if(opened29 == 0){
									goldVar += 10;
									opened29 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog29.alpha = 1;
								progress.progMC.c1.prog29.v.alpha = 1;
									progress.progMC.c1.prog29.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 340){
								if(progress.progMC.c1.prog30.alpha == 0.5){
									if(opened30 == 0){
									goldVar += 10;
									opened30 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog30.alpha = 1;
								progress.progMC.c1.prog30.v.alpha = 1;
								progress.progMC.c1.prog30_2.alpha = 1;
								progress.progMC.c1.prog30_2.v.alpha = 1;
									progress.progMC.c1.prog30.gotoAndPlay(21);
									progress.progMC.c1.prog30_2.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 350){
							if(progress.progMC.c1.prog31.alpha == 0.5){
								if(opened31 == 0){
									goldVar += 10;
									opened31 = 1;
								plusFunk();
								}
								progress.progMC.c1.prog31.alpha = 1;
								progress.progMC.c1.prog31.v.alpha = 1;
								progress.progMC.c1.prog31.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 360){
								if(progress.progMC.c1.prog32.alpha == 0.5){
									if(opened32 == 0){
									goldVar += 10;
									opened32 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog32.alpha = 1;
								progress.progMC.c1.prog32.v.alpha = 1;
									progress.progMC.c1.prog32.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 370){
								if(progress.progMC.c1.prog33.alpha == 0.5){
									if(opened33 == 0){
									goldVar += 10;
									opened33 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog33.alpha = 1;
								progress.progMC.c1.prog33.v.alpha = 1;
									progress.progMC.c1.prog33.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 380){
								if(progress.progMC.c1.prog34.alpha == 0.5){
									if(opened34 == 0){
									goldVar += 10;
									opened34 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog34.alpha = 1;
								progress.progMC.c1.prog34.v.alpha = 1;
									progress.progMC.c1.prog34.gotoAndPlay(21);
							}
						}
						if(currentMovie.currentFrame == 390){
								if(progress.progMC.c1.prog35.alpha == 0.5){
									if(opened35 == 0){
									goldVar += 10;
									opened35 = 1;
									plusFunk();
									}
								progress.progMC.c1.prog35.alpha = 1;
								progress.progMC.c1.prog35.v.alpha = 1;
									progress.progMC.c1.prog35.gotoAndPlay(21);
							}
						}
					}else if(World == 2){
						if(currentMovie.currentFrame == 1){//черный
							opened1_1 = 1;
							progress.progMC.c2.prog1.alpha = 1;
							progress.progMC.c2.prog1.v.alpha = 1;
						}
						if(currentMovie.currentFrame == 10){ //упав
							opened2_1 = 1;
							progress.progMC.c2.prog2.alpha = 1;
							progress.progMC.c2.prog2.v.alpha = 1;
						}
						if(currentMovie.currentFrame == 250){ // кратер
							if(progress.progMC.c2.prog3.alpha == 0.5){
									if(opened3_1 == 0){
									goldVar += 10;
									opened3_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog3.alpha = 1;
								progress.progMC.c2.prog3.v.alpha = 1;
								progress.progMC.c2.prog3.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 60){//грибы
							if(progress.progMC.c2.prog4.alpha == 0.5){
									if(opened4_1 == 0){
									goldVar += 10;
									opened4_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog4.alpha = 1;
								progress.progMC.c2.prog4.v.alpha = 1;
								progress.progMC.c2.prog4.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 70){//споры
							if(progress.progMC.c2.prog5.alpha == 0.5){
									if(opened5_1 == 0){
									goldVar += 10;
									opened5_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog5.alpha = 1;
								progress.progMC.c2.prog5.v.alpha = 1;
								progress.progMC.c2.prog5.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 170){//ПОБЕДА
							if(progress.progMC.c2.prog6.alpha == 0.5){
									if(opened6_1 == 0){
									goldVar += 10;
									opened6_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog6.alpha = 1;
								progress.progMC.c2.prog6.v.alpha = 1;
								progress.progMC.c2.prog6.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 90){//монстр
							if(progress.progMC.c2.prog7.alpha == 0.5){
									if(opened7_1 == 0){
									goldVar += 10;
									opened7_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog7.alpha = 1;
								progress.progMC.c2.prog7.v.alpha = 1;
								progress.progMC.c2.prog7.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 100){//злой
							if(progress.progMC.c2.prog8.alpha == 0.5){
									if(opened8_1 == 0){
									goldVar += 10;
									opened8_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog8.alpha = 1;
								progress.progMC.c2.prog8.v.alpha = 1;
								progress.progMC.c2.prog8.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 120){//ферма
							if(progress.progMC.c2.prog9.alpha == 0.5){
									if(opened9_1 == 0){
									goldVar += 10;
									opened9_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog9.alpha = 1;
								progress.progMC.c2.prog9.v.alpha = 1;
								progress.progMC.c2.prog9.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 130){//кристаллы
							if(progress.progMC.c2.prog10.alpha == 0.5){
									if(opened10_1 == 0){
									goldVar += 10;
									opened10_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog10.alpha = 1;
								progress.progMC.c2.prog10.v.alpha = 1;
								progress.progMC.c2.prog10.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 140){//шахта
							if(progress.progMC.c2.prog11.alpha == 0.5){
									if(opened11_1 == 0){
									goldVar += 10;
									opened11_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog11.alpha = 1;
								progress.progMC.c2.prog11.v.alpha = 1;
								progress.progMC.c2.prog11.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 150){//растения
							if(progress.progMC.c2.prog12.alpha == 0.5){
									if(opened12_1 == 0){
									goldVar += 10;
									opened12_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog12.alpha = 1;
								progress.progMC.c2.prog12.v.alpha = 1;
								progress.progMC.c2.prog12.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 160){//оранжерея
							if(progress.progMC.c2.prog13.alpha == 0.5){
									if(opened13_1 == 0){
									goldVar += 10;
									opened13_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog13.alpha = 1;
								progress.progMC.c2.prog13.v.alpha = 1;
								progress.progMC.c2.prog13.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 180){//спутник
							if(progress.progMC.c2.prog14.alpha == 0.5){
									if(opened14_1 == 0){
									goldVar += 10;
									opened14_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog14.alpha = 1;
								progress.progMC.c2.prog14.v.alpha = 1;
								progress.progMC.c2.prog14.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 190){//город
							if(progress.progMC.c2.prog15.alpha == 0.5){
									if(opened15_1 == 0){
									goldVar += 10;
									opened15_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog15.alpha = 1;
								progress.progMC.c2.prog15.v.alpha = 1;
								progress.progMC.c2.prog15.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 200){//озеро
							if(progress.progMC.c2.prog16.alpha == 0.5){
									if(opened16_1 == 0){
									goldVar += 10;
									opened16_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog16.alpha = 1;
								progress.progMC.c2.prog16.v.alpha = 1;
								progress.progMC.c2.prog16.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 210){//актив крист
							if(progress.progMC.c2.prog17.alpha == 0.5){
									if(opened17_1 == 0){
									goldVar += 10;
									opened17_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog17.alpha = 1;
								progress.progMC.c2.prog17.v.alpha = 1;
								progress.progMC.c2.prog17.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 260){//червь
							if(progress.progMC.c2.prog18.alpha == 0.5){
									if(opened18_1 == 0){
									goldVar += 10;
									opened18_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog18.alpha = 1;
								progress.progMC.c2.prog18.v.alpha = 1;
								progress.progMC.c2.prog18.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 270){//тринога
							if(progress.progMC.c2.prog19.alpha == 0.5){
									if(opened19_1 == 0){
									goldVar += 10;
									opened19_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog19.alpha = 1;
								progress.progMC.c2.prog19.v.alpha = 1;
								progress.progMC.c2.prog19.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 280){//антена
							if(progress.progMC.c2.prog20.alpha == 0.5){
									if(opened20_1 == 0){
									goldVar += 10;
									opened20_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog20.alpha = 1;
								progress.progMC.c2.prog20.v.alpha = 1;
								progress.progMC.c2.prog20.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 300){//склад
							if(progress.progMC.c2.prog21.alpha == 0.5){
									if(opened21_1 == 0){
									goldVar += 10;
									opened21_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog21.alpha = 1;
								progress.progMC.c2.prog21.v.alpha = 1;
								progress.progMC.c2.prog21.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 330){//облуч раст
							if(progress.progMC.c2.prog22.alpha == 0.5){
									if(opened22_1 == 0){
									goldVar += 10;
									opened22_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog22.alpha = 1;
								progress.progMC.c2.prog22.v.alpha = 1;
								progress.progMC.c2.prog22.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 370){//облуч грибы
							if(progress.progMC.c2.prog23.alpha == 0.5){
									if(opened23_1 == 0){
									goldVar += 10;
									opened23_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog23.alpha = 1;
								progress.progMC.c2.prog23.v.alpha = 1;
								progress.progMC.c2.prog23.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 380){//иноплан
							if(progress.progMC.c2.prog24.alpha == 0.5){
									if(opened24_1 == 0){
									goldVar += 10;
									opened24_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog24.alpha = 1;
								progress.progMC.c2.prog24.v.alpha = 1;
								progress.progMC.c2.prog24.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 390){//мицелий
							if(progress.progMC.c2.prog25.alpha == 0.5){
									if(opened25_1 == 0){
									goldVar += 10;
									opened25_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog25.alpha = 1;
								progress.progMC.c2.prog25.v.alpha = 1;
								progress.progMC.c2.prog25.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 410){//руины
							if(progress.progMC.c2.prog26.alpha == 0.5){
									if(opened26_1 == 0){
									goldVar += 10;
									opened26_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog26.alpha = 1;
								progress.progMC.c2.prog26.v.alpha = 1;
								progress.progMC.c2.prog26.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 430){//вооруж иноп
							if(progress.progMC.c2.prog27.alpha == 0.5){
									if(opened27_1 == 0){
									goldVar += 10;
									opened27_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog27.alpha = 1;
								progress.progMC.c2.prog27.v.alpha = 1;
								progress.progMC.c2.prog27.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 440){//турбина
							if(progress.progMC.c2.prog28.alpha == 0.5){
									if(opened28_1 == 0){
									goldVar += 10;
									opened28_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog28.alpha = 1;
								progress.progMC.c2.prog28.v.alpha = 1;
								progress.progMC.c2.prog28.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 490){//дыра
							if(progress.progMC.c2.prog29.alpha == 0.5){
									if(opened29_1 == 0){
									goldVar += 10;
									opened29_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog29.alpha = 1;
								progress.progMC.c2.prog29.v.alpha = 1;
								progress.progMC.c2.prog29.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 500){//скважина
							if(progress.progMC.c2.prog30.alpha == 0.5){
									if(opened30_1 == 0){
									goldVar += 10;
									opened30_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog30.alpha = 1;
								progress.progMC.c2.prog30.v.alpha = 1;
								progress.progMC.c2.prog30.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 510){//испрения
							if(progress.progMC.c2.prog31.alpha == 0.5){
									if(opened31_1 == 0){
									goldVar += 10;
									opened31_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog31.alpha = 1;
								progress.progMC.c2.prog31.v.alpha = 1;
								progress.progMC.c2.prog31.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 520){//уловитель
							if(progress.progMC.c2.prog32.alpha == 0.5){
									if(opened32_1 == 0){
									goldVar += 10;
									opened32_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog32.alpha = 1;
								progress.progMC.c2.prog32.v.alpha = 1;
								progress.progMC.c2.prog32.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 530){//зенитка
							if(progress.progMC.c2.prog33.alpha == 0.5){
									if(opened33_1 == 0){
									goldVar += 10;
									opened33_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog33.alpha = 1;
								progress.progMC.c2.prog33.v.alpha = 1;
								progress.progMC.c2.prog33.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 580){//завод
							if(progress.progMC.c2.prog34.alpha == 0.5){
									if(opened34_1 == 0){
									goldVar += 10;
									opened34_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog34.alpha = 1;
								progress.progMC.c2.prog34.v.alpha = 1;
								progress.progMC.c2.prog34.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 590){//база
							if(progress.progMC.c2.prog35.alpha == 0.5){
									if(opened35_1 == 0){
									goldVar += 10;
									opened35_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog35.alpha = 1;
								progress.progMC.c2.prog35.v.alpha = 1;
								progress.progMC.c2.prog35.gotoAndPlay(21);
								}
						}
						if(currentMovie.currentFrame == 230){//тарелка
							if(progress.progMC.c2.prog36.alpha == 0.5){
									if(opened36_1 == 0){
									goldVar += 10;
									opened36_1 = 1;
									plusFunk();
									}
								progress.progMC.c2.prog36.alpha = 1;
								progress.progMC.c2.prog36.v.alpha = 1;
								progress.progMC.c2.prog36.gotoAndPlay(21);
								}
						}
					}
				}
			}
		}
		
		public function plusFunk():void{
			if(progress.plus1.currentFrame == 1){
				progress.plus1.gotoAndPlay(2);
			}else if(progress.plus2.currentFrame == 1){
				progress.plus2.gotoAndPlay(2);
			}else{
				progress.plus3.gotoAndPlay(2);
			}
		}
		
		public function clearClick(e:MouseEvent):void{
			clearFunc();
			createWorld();
		}
		
		public function clearFunc():void{
			clearUFO();
			clearRadia();
			clearMonster();
			//element2_2.x = -100;
			///element2_2.y = -100;
			toX2_1 = 392;
			toY2_1 = 226;
			GameStarted = 1;
			//removeChild(fly);
			
			if(World == 1){
				for	(var t:int = 1; t < 37; t++){
				var currentProg:String;
				currentProg = "prog"+(t);
				progress.progMC.c1.getChildByName(currentProg).alpha = 0.5;
				MovieClip(progress.progMC.c1.getChildByName(currentProg)).v.alpha = 0
				progress.progMC.c1.prog36_2.v.alpha = 0;
				progress.progMC.c1.prog30_2.v.alpha = 0;
				progress.progMC.c1.prog7_2.v.alpha = 0;
				progress.progMC.c1.prog8_2.v.alpha = 0;
				}
				clearWorld1();
			}
			if(World == 2){
				for	(var t:int = 1; t < 36; t++){
				var currentProg:String;
				currentProg = "prog"+(t);
				progress.progMC.c2.getChildByName(currentProg).alpha = 0.5;
				MovieClip(progress.progMC.c2.getChildByName(currentProg)).v.alpha = 0
				}
				clearWorld2();
			}
		}
		
		public function clearWorld1():void{
			for (var i:int = 0; i < 6; i++) {
				for (var j:int = 0; j < 6; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie){
						gameField.removeChild(currentMovie);
					}
				}
			}
		}
		public function clearWorld2():void{
			trace("clear2");
			for (var i:int = 0; i < 7; i++) {
				for (var j:int = 0; j < 7; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie){
						gameField.removeChild(currentMovie);
					}
				}
			}
		}
		
		public function clearUFO():void{
			if(ufos != 0){
			for (var i:int = 0; i < ufoArray.length; i++) {
				var currentMovie:MovieClip = ufoArray[i];
				gameUfo.removeChild(currentMovie);	
			}
			ufoArray.length = 0;
			ufos = 0;
			}
		}
		
		public function removeUFO():void{
			
		}
		
		public function clearRadia():void{
			if(radiations != 0){
			for (var i:int = 0; i < radiaArray.length; i++) {
				var currentMovie:MovieClip = radiaArray[i];
				gameRadia.removeChild(currentMovie);
			}
			radiaArray.length = 0;
			radiations = 0;
			}
		}
		
		public function clearMonster():void{
			if(monsters != 0){
			for (var i:int = 0; i < monsterArray.length; i++) {
				var currentMovie:MovieClip = monsterArray[i];
				currentMovie.visible = false;
				gameMonster.removeChild(currentMovie);
			}
			monsterArray.length = 0;
			trace(monsterArray);
			monsters = 0;
			}
		}
		
		public function check1(v1:int, v2:int, v3:int):void {
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie.currentFrame == v1){
					if (mainArray[i + 1]) {
						if (mainArray[i + 1][j]) { //сосед справа
							if (mainArray[i + 1][j].currentFrame == v2) {
								currentMovie.gotoAndPlay(v3);
								if(helperInGame.currentFrame == 6){
									helperInGame.gotoAndStop(7);
								}
								continue;
							}
						}
					}
					if (mainArray[i - 1]) {
						if (mainArray[i - 1][j]) { //сосед слева
							if (mainArray[i - 1][j].currentFrame == v2) {
								currentMovie.gotoAndPlay(v3);
								if(helperInGame.currentFrame == 6){
									helperInGame.gotoAndStop(7);
								}
								continue;
							}
						}
					}
					if (mainArray[i][j - 1]) { //сосед сверху
						if (mainArray[i][j - 1].currentFrame == v2) {
							currentMovie.gotoAndPlay(v3);
							if(helperInGame.currentFrame == 6){
								helperInGame.gotoAndStop(7);
							}
							continue;
						}	
					}
					if (mainArray[i][j + 1]) { //сосед сверху
						if (mainArray[i][j + 1].currentFrame == v2) {
							currentMovie.gotoAndPlay(v3);
							if(helperInGame.currentFrame == 6){
								helperInGame.gotoAndStop(7);
							}
							continue;
						}
					}
				}
				}
			} 
		}
		
		public function check3_1(v1:int, v2:int, v3:int, v4:Object):void {
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie.currentFrame == v1){
					if (mainArray[i + 1]) {
						if (mainArray[i + 1][j]) { //сосед справа
							if (mainArray[i + 1][j].currentFrame == v2) {
								MovieClip(v4).x = currentMovie.x;
								MovieClip(v4).y = currentMovie.y;
								MovieClip(v4).gotoAndPlay(2);
								MovieClip(mainArray[i + 1][j]).gotoAndPlay(v3);
								continue;
							}
						}
					}
					if (mainArray[i - 1]) {
						if (mainArray[i - 1][j]) { //сосед слева
							if (mainArray[i - 1][j].currentFrame == v2) {
								MovieClip(v4).x = currentMovie.x;
								MovieClip(v4).y = currentMovie.y;
								MovieClip(v4).gotoAndPlay(2);
								MovieClip(mainArray[i - 1][j]).gotoAndPlay(v3);
								continue;
							}
						}
					}
					if (mainArray[i][j - 1]) { //сосед сверху
						if (mainArray[i][j - 1].currentFrame == v2) {
							MovieClip(v4).x = currentMovie.x;
							MovieClip(v4).y = currentMovie.y;
							MovieClip(v4).gotoAndPlay(2);
							MovieClip(mainArray[i][j - 1]).gotoAndPlay(v3);
							continue;
						}	
					}
					if (mainArray[i][j + 1]) { //сосед сверху
						if (mainArray[i][j + 1].currentFrame == v2) {
							MovieClip(v4).x = currentMovie.x;
							MovieClip(v4).y = currentMovie.y;
							MovieClip(v4).gotoAndPlay(2);
							MovieClip(mainArray[i][j + 1]).gotoAndPlay(v3);
							continue;
						}
					}
				}
			}
			}
		}
		
		public function check3_1_1():void { //взрыв
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
						if(currentMovie.x == element2_3.x && currentMovie.y == element2_3.y && element2_3.currentFrame==4 && currentMovie.currentFrame!=1){
							element2_3.x = -100;
							element2_3.y = -100;
							element2_3.gotoAndStop(1);
							currentMovie.gotoAndPlay(401);
					}
				}
			}
		}
		
		public function createRadia(XX, YY):void {		
			var element2_4:ElementClass2_4 = new ElementClass2_4();
			gameRadia.addChild(element2_4);
			element2_4.mouseEnabled = false;
			element2_4.mouseChildren = false;
			element2_4.x = XX;
			element2_4.y = YY;	
			element2_4.gotoAndPlay(2);
			radiaArray[radiations] = element2_4;
			radiations ++;
		}
		
		public function createMonster(XX, YY):void {
			var element2_5:ElementClass2_5 = new ElementClass2_5();
			gameMonster.addChild(element2_5);
			element2_5.mouseEnabled = false;
			element2_5.mouseChildren = false;
			element2_5.x = XX;
			element2_5.y = YY;	
			//toX2_5 = element2_5.x;
			//toY2_5 = element2_5.y;
			element2_5.gotoAndPlay(2);
			monsterArray[monsters] = element2_5;
			monsters ++;
		}
		
		public function check2_1():void {
			for (var u:int = 0; u < ufoArray.length; u++) { 
				var currentUfo:MovieClip = ufoArray[u];
				if(Math.round(element2_1.x) == currentUfo.x){
					if(Math.round(element2_1.y) == currentUfo.y){ //уфо над челом
						animation2_1();	
					}
				}
				for (var ii:int = 0; ii < mainArray.length; ii++) {
					for (var jj:int = 0; jj < mainArray[ii].length; jj++) {
						var currentMovie2:MovieClip = mainArray[ii][jj];
						if(Math.round(currentUfo.x) == currentMovie2.x){
							if(Math.round(currentUfo.y) == currentMovie2.y){
								if(currentMovie2.currentFrame == 530){
									trace("kill_ufo");
									gameUfo.removeChild(currentUfo);
									ufoArray.splice(u);
									//currentUfo.x = -100;
									//currentUfo.y = -100;
								}
							}			
						}
					}
				}		
			}
			for (var r:int = 0; r < radiaArray.length; r++) { 
				var currentRadia:MovieClip = radiaArray[r];
				if(Math.round(element2_1.x) == currentRadia.x){
					if(Math.round(element2_1.y) == currentRadia.y){ //радиация и чел
						animation2_1();	
					}
				}
			}
			for (var m:int = 0; m < monsterArray.length; m++) { 
				var currentMonster:MovieClip = monsterArray[m];
				if(Math.round(element2_1.x) == Math.round(currentMonster.x)){
					if(Math.round(element2_1.y) == Math.round(currentMonster.y)){ //монстр и чел
						animation2_1();	
					}
				}
			}
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie.currentFrame == 20){
						if(Math.round(Main.element2_1.x) == currentMovie.x){
							if(Math.round(Main.element2_1.y) == currentMovie.y){ //исследователь
								currentMovie.gotoAndPlay(50);
							}
						}
					}
					if(currentMovie.currentFrame == 50){
						if(Math.round(Main.element2_1.x) != currentMovie.x){
							if(Math.round(Main.element2_1.y) != currentMovie.y){ //исследователь возврат
								currentMovie.gotoAndPlay(20);
							}
						}
					}
					if(currentMovie.x == Math.round(element2_1.x) && currentMovie.y == Math.round(element2_1.y)){
						if(currentMovie.currentFrame == 100){ //монстр
							//currentMovie.gotoAndPlay(211);
							//animation2_1();							
						}
						if(currentMovie.currentFrame == 70){ //грибы
							animation2_1();
						}
						if(currentMovie.currentFrame == 430){ //вооруж инопланетянин
							animation2_1();
						}
						if(currentMovie.currentFrame == 40){ // ?????
							animation2_1();
						}
						if(currentMovie.currentFrame == 252){ //червь
							if(element2_1.currentFrame == 1){
								animation2_1();
							}else if(element2_1.currentFrame == 2){
								currentMovie.gotoAndPlay(485);
							}
						}
						if(currentMovie.currentFrame == 260){ //червь
							if(element2_1.currentFrame == 1){
								animation2_1();
							}else if(element2_1.currentFrame == 2){
								currentMovie.gotoAndPlay(485);
							}
						}
						if(currentMovie.currentFrame == 290){ //радиация
							animation2_1();
						}
						if(currentMovie.currentFrame == 430){ //вооруженный инопланетянин
							animation2_1();
						}
						if(currentMovie.currentFrame == 20){
						currentMovie.gotoAndStop(50);
						}
						if(element2_1.currentFrame == 2){ //война
							if(currentMovie.currentFrame == 130){ //бластер на кристалах
								currentMovie.gotoAndStop(210);
							}
							if(currentMovie.currentFrame == 210){
								check4_1(210, 11, element2_4); //радиация
							}
							if(currentMovie.currentFrame == 90){
								createMonster(currentMovie.x, currentMovie.y);
								currentMovie.gotoAndPlay(91); 
							}
							if(currentMovie.currentFrame == 20){
								currentMovie.gotoAndPlay(41);
							}
							if(currentMovie.currentFrame == 360){
								currentMovie.gotoAndPlay(41);
							}
							if(currentMovie.currentFrame == 380){
								currentMovie.gotoAndPlay(430);
							}
							if(currentMovie.currentFrame == 60){
								currentMovie.gotoAndPlay(70);
							}
							if(currentMovie.currentFrame == 190){
								if(World == 2){
									createUFO(currentMovie.x, currentMovie.y);
								}
							}
							if(currentMovie.currentFrame == 380){
								currentMovie.gotoAndPlay(421);
							}
							if(currentMovie.currentFrame == 260){
								currentMovie.gotoAndPlay(485);
							}
							if(currentMovie.currentFrame == 200){
								currentMovie.gotoAndPlay(501);
							}
						}else if(element2_1.currentFrame == 1){ //изучение
							if(currentMovie.currentFrame == 210){
								//check4_1(210, 11, element2_4); //радиация
								currentMovie.gotoAndPlay(131);
							}
							if(currentMovie.currentFrame == 370){
								currentMovie.gotoAndPlay(381);
							}
							if(currentMovie.currentFrame == 380){
								currentMovie.gotoAndPlay(430);
							}
							if(currentMovie.currentFrame == 90){
								currentMovie.gotoAndPlay(111);
							}
							if(currentMovie.currentFrame == 20){
								currentMovie.gotoAndPlay(41);
							}
							/*if(currentMovie.currentFrame == 360){
								currentMovie.gotoAndPlay(361);
							}*/
							if(currentMovie.currentFrame == 30){
								currentMovie.gotoAndPlay(31);	
							}
							if(currentMovie.currentFrame == 330){
								currentMovie.gotoAndPlay(151);
							}
							if(currentMovie.currentFrame == 250){
								currentMovie.gotoAndPlay(251);
							}
							if(currentMovie.currentFrame == 180){
								currentMovie.gotoAndPlay(271);
							}
							if(currentMovie.currentFrame == 80){
								currentMovie.gotoAndPlay(431);
							}
							if(currentMovie.currentFrame == 490){
								currentMovie.gotoAndPlay(491);
							}
							if(currentMovie.currentFrame == 510){
								currentMovie.gotoAndPlay(511);
							}
							if(currentMovie.currentFrame == 190){
								currentMovie.gotoAndPlay(221);
								createUFO(currentMovie.x, currentMovie.y);
							}
						}
					}
				}
			}
		}
		
		public function check5_1():void { //тринога
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie.currentFrame == 270){ 
						if(Math.round(element2_1.x) == currentMovie.x-62 || Math.round(element2_1.x) == currentMovie.x+62){
							if(Math.round(element2_1.y) == currentMovie.y-31 || Math.round(element2_1.y) == currentMovie.y+31){ 
								animation2_1();
								currentMovie.gotoAndPlay(531);
							}
						}
						
					}
				}
			}
		}
		
		public function check4_1(v2:int, v3:int, v4:Object):void {
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if (mainArray[i + 1]) {
						if (mainArray[i + 1][j]) { //сосед справа
							if (mainArray[i + 1][j].currentFrame == v2) {
								if(currentMovie.currentFrame == 130){
									currentMovie.gotoAndStop(130);
								}else if(currentMovie.currentFrame == 150){
									currentMovie.gotoAndPlay(330);
								}else if(currentMovie.currentFrame == 160){
									currentMovie.gotoAndPlay(160);
								}else if(currentMovie.currentFrame == 440){
									currentMovie.gotoAndPlay(440);
								}else if(currentMovie.currentFrame == 60){
									currentMovie.gotoAndPlay(370);
								}else if(currentMovie.currentFrame == 70){
									currentMovie.gotoAndPlay(370);
								}else if(currentMovie.currentFrame != 370 && currentMovie.currentFrame != v3 && currentMovie.currentFrame != 10 && currentMovie.currentFrame != 330 && currentMovie.currentFrame != 210 && currentMovie.currentFrame != 140 && currentMovie.currentFrame != 200  && currentMovie.currentFrame != 510){
								createRadia(currentMovie.x, currentMovie.y);
								MovieClip(v4).x = currentMovie.x;
								MovieClip(v4).y = currentMovie.y;
								MovieClip(v4).gotoAndPlay(2);
								currentMovie.gotoAndStop(v3);
								}
							}
						}
					}
					if (mainArray[i - 1]) {
						if (mainArray[i - 1][j]) { //сосед слева
							if (mainArray[i - 1][j].currentFrame == v2) {
								if(currentMovie.currentFrame == 130){
									currentMovie.gotoAndStop(130);
								}else if(currentMovie.currentFrame == 150){
									currentMovie.gotoAndPlay(330);
								}else if(currentMovie.currentFrame == 330){
									currentMovie.gotoAndStop(330);
								}else if(currentMovie.currentFrame == 60){
									currentMovie.gotoAndPlay(370);
								}else if(currentMovie.currentFrame == 70){
									currentMovie.gotoAndPlay(370); 
								}else 
								if(currentMovie.currentFrame != 370 && currentMovie.currentFrame != v3 && currentMovie.currentFrame != 10 && currentMovie.currentFrame != 330 && currentMovie.currentFrame != 210 && currentMovie.currentFrame != 140 && currentMovie.currentFrame != 200  && currentMovie.currentFrame != 510){
								createRadia(currentMovie.x, currentMovie.y);
								MovieClip(v4).x = currentMovie.x;
								MovieClip(v4).y = currentMovie.y;
								MovieClip(v4).gotoAndPlay(2);
								currentMovie.gotoAndStop(v3);
								}
							}
						}
					}
					if (mainArray[i][j - 1]) { //сосед сверху
						if (mainArray[i][j - 1].currentFrame == v2) {
							if(currentMovie.currentFrame == 130){
									currentMovie.gotoAndStop(130);
								}else if(currentMovie.currentFrame == 150){
									currentMovie.gotoAndPlay(330);
								}else if(currentMovie.currentFrame == 330){
									currentMovie.gotoAndStop(330);
								}else if(currentMovie.currentFrame == 60){
									currentMovie.gotoAndPlay(370);
								}else if(currentMovie.currentFrame == 70){
									currentMovie.gotoAndPlay(370); 
								}else 
							if(currentMovie.currentFrame != 370 && currentMovie.currentFrame != v3 && currentMovie.currentFrame != 10 && currentMovie.currentFrame != 330 && currentMovie.currentFrame != 210 && currentMovie.currentFrame != 140 && currentMovie.currentFrame != 200  && currentMovie.currentFrame != 510){
							createRadia(currentMovie.x, currentMovie.y);
							MovieClip(v4).x = currentMovie.x;
							MovieClip(v4).y = currentMovie.y;
							MovieClip(v4).gotoAndPlay(2);
							currentMovie.gotoAndStop(v3);
							}
						}	
					}
					if (mainArray[i][j + 1]) { //сосед сверху
						if (mainArray[i][j + 1].currentFrame == v2) {
							if(currentMovie.currentFrame == 130){
									currentMovie.gotoAndStop(130);
								}else if(currentMovie.currentFrame == 150){
									currentMovie.gotoAndPlay(330);
								}else if(currentMovie.currentFrame == 330){
									currentMovie.gotoAndStop(330);
								}else if(currentMovie.currentFrame == 60){
									currentMovie.gotoAndPlay(370);
								}else if(currentMovie.currentFrame == 70){
									currentMovie.gotoAndPlay(370); 
								}else 
							if(currentMovie.currentFrame != 370 && currentMovie.currentFrame != v3 && currentMovie.currentFrame != 10 && currentMovie.currentFrame != 330 && currentMovie.currentFrame != 210 && currentMovie.currentFrame != 140 && currentMovie.currentFrame != 200  && currentMovie.currentFrame != 510){
							createRadia(currentMovie.x, currentMovie.y);
							MovieClip(v4).x = currentMovie.x;
							MovieClip(v4).y = currentMovie.y;
							MovieClip(v4).gotoAndPlay(2);
							currentMovie.gotoAndStop(v3);
							}
						}
					}
				}
			}
		}
		
		public function animation2_1():void {
			if(element2_1.currentFrame == 1 || element2_1.currentFrame == 2){
				helperInGame2.gotoAndStop(10);
				element2_1.y -= 2;
				element2_1.gotoAndPlay(3);
				Main.element2_1.cr.visible = false;
				Main.element2_1.cl.visible = false;
			}
		}
		
		public function check1_1():void { // генерация поля
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
						if(currentMovie.currentFrame == 1){
						if(Math.round(Main.element2_1.x) == currentMovie.x-62 || Math.round(Main.element2_1.x) == currentMovie.x+62){
						if(Math.round(Main.element2_1.y) == currentMovie.y-31 || Math.round(Main.element2_1.y) == currentMovie.y+31){
								var rand = (Math.round(Math.random()*12));
								if(rand == 0){
									currentMovie.gotoAndPlay(250);
								}else if(rand == 1){
									currentMovie.gotoAndPlay(60);
								}else if(rand == 2){
									currentMovie.gotoAndPlay(90);
								}else if(rand == 3){
									currentMovie.gotoAndPlay(130);
								}else if(rand == 4){
									currentMovie.gotoAndPlay(150);
								}else if(rand == 5){
									currentMovie.gotoAndPlay(180);
								}else if(rand == 6){
									currentMovie.gotoAndPlay(190);
								}else if(rand == 7){
									currentMovie.gotoAndPlay(200);
								}else if(rand == 8){
									currentMovie.gotoAndPlay(250);
								}else if(rand == 9 && Main.element2_1.x!=392 && Main.element2_1.y!=226){
									currentMovie.gotoAndPlay(270);
								}else if(rand == 10){
									currentMovie.gotoAndPlay(380);
								}else{
									currentMovie.gotoAndStop(20);
								}
							}
						}
					}
				}
			} 
		}
		
		public function check2(v1:int, v2:int, v3:int):void {
			
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					var left = 0;
					var right = 0;
					var up = 0;
					var down = 0;
					
					if(currentMovie.currentFrame == v1){
					if (mainArray[i + 1]) {
						if (mainArray[i + 1][j]) { //сосед справа
							if (mainArray[i + 1][j].currentFrame == v2) {
								right = 1;
							}
						}
					}
					if (mainArray[i - 1]) {
						if (mainArray[i - 1][j]) { //сосед слева
							if (mainArray[i - 1][j].currentFrame == v2) {
								left = 1;
							}
						}
					}
					if (mainArray[i][j - 1]) { //сосед сверху
						if (mainArray[i][j - 1].currentFrame == v2) {
								up = 1;	
						}	
					}
					if (mainArray[i][j + 1]) { //сосед сверху
						if (mainArray[i][j + 1].currentFrame == v2) {
								down = 1;
						}
					}
					if ((down == 1 && up == 1) || (left == 1 && right == 1)){
						currentMovie.gotoAndPlay(v3);
					}
				}
				}
			} 
		}		
		
		public function check4(v1:int, v2:int, v3:int):void {
			
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					var left = 0;
					var right = 0;
					var up = 0;
					var down = 0;
					
					if(currentMovie.currentFrame == v1){
					if (mainArray[i + 1]) {
						if (mainArray[i + 1][j]) { //сосед справа
							if (mainArray[i + 1][j].currentFrame == v2) {
								right = 1;
							}
						}
					}
					if (mainArray[i - 1]) {
						if (mainArray[i - 1][j]) { //сосед слева
							if (mainArray[i - 1][j].currentFrame == v2) {
								left = 1;
							}
						}
					}
					if (mainArray[i][j - 1]) { //сосед сверху
						if (mainArray[i][j - 1].currentFrame == v2) {
								up = 1;	
						}	
					}
					if (mainArray[i][j + 1]) { //сосед сверху
						if (mainArray[i][j + 1].currentFrame == v2) {
								down = 1;
						}
					}
					if (down == 1 && up == 1 && left == 1 && right == 1){
						currentMovie.gotoAndPlay(v3);
					}
				}
				}
			} 
		}
		
		
		public function check6():void {
			for (var i:int = 0; i < mainArray.length; i++) {
						for (var j:int = 0; j < mainArray[i].length; j++) {
							var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie.currentFrame == 190 && progress.progMC.c1.prog19.alpha == 1 && progress.progMC.c1.prog20.alpha == 1 && progress.progMC.c1.prog29.alpha == 1){
						currentMovie.gotoAndPlay(361);
					}
				}
			}
		}
				
		
		/*public function check7():void {
			for (var i:int = 0; i < mainArray.length; i++) {
						for (var j:int = 0; j < mainArray[i].length; j++) {
							var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie.currentFrame == 350 && progress.progMC.c1.prog24.alpha == 1){
						currentMovie.gotoAndPlay(351);
					}
				}
			}
		}*/
		
		public function check8():void {
			var ork = 0;
			var elf = 0;
			var gnom = 0;
			var men = 0;
			var chu = 0;
			var dra = 0;
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if (currentMovie.currentFrame == 320){
						ork = 1;
					}
					if (currentMovie.currentFrame == 310){
						elf = 1;
					}
					if (currentMovie.currentFrame == 160){
						chu = 1;
					}
					if (currentMovie.currentFrame == 140){
						gnom = 1;
					}
					if (currentMovie.currentFrame == 70){
						men = 1;
					}
					if (currentMovie.currentFrame == 250){
						dra = 1;
					}
					//trace (ork, elf, gnom, men, chu);		
					if(currentMovie.currentFrame == 340 && ork == 1 && elf == 1 && gnom == 1  && men == 1 && chu ==1 && dra ==1){
						currentMovie.gotoAndPlay(371);
					}
				}
			}
			
		}
					
		public function check9():void {
			var hram = 0;
			var verf = 0;
			var meln = 0;
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if (currentMovie.currentFrame == 200){
						hram = 1;
					}
					if (currentMovie.currentFrame == 330){
						verf = 1;
					}
					if (currentMovie.currentFrame == 210){
						meln = 1;
					}	
					if(currentMovie.currentFrame == 190 && hram == 1 && verf == 1  && meln == 1){
						currentMovie.gotoAndPlay(361);
					}
				}
			}
		}
		
		public function check10():void {
			var gild = 0;
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if (currentMovie.currentFrame == 360){
						gild = 1;
					}
					if(currentMovie.currentFrame == 370 && gild ==1){
						currentMovie.gotoAndPlay(381);
					}
				}
			}
		}
		
		public function check10_1():void {
			var skl = 0;
			var baz = 0;
			var him = 0;
			var zen = 0;
			var sha = 0;
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					if(currentMovie.currentFrame == 10){
						 if(WinVar == 2){					
							currentMovie.gotoAndPlay(161);
							continue;
						 }
					 }
					if (currentMovie.currentFrame == 300){
						skl = 1;
					}
					if (currentMovie.currentFrame == 590){
						baz = 1;
					}
					if (currentMovie.currentFrame == 580){
						him = 1;
					}
					if (currentMovie.currentFrame == 530){
						zen = 1;
					}
					if (currentMovie.currentFrame == 140){
						sha = 1;
					}	
					if(skl == 1 && baz == 1 && him == 1  && zen == 1 && sha ==1){
						if(levels.visible == false){
							trace("WIN 2");
							WinVar = 2;
						}
					}
				}
			}
			
		}
		
		public function check5(v1:int, v2:int, v21:int ,v22:int, v3:int):void {
			
			for (var i:int = 0; i < mainArray.length; i++) {
				for (var j:int = 0; j < mainArray[i].length; j++) {
					var currentMovie:MovieClip = mainArray[i][j];
					var left = 0;
					var right = 0;
					var up = 0;
					var down = 0;
					
					if(currentMovie.currentFrame == v1){
					if (mainArray[i + 1]) {
						if (mainArray[i + 1][j]) { //сосед справа
							if (mainArray[i + 1][j].currentFrame == v2 || mainArray[i + 1][j].currentFrame == v21 || mainArray[i + 1][j].currentFrame == v22) {
								right = 1;
							}
						}
					}
					if (mainArray[i - 1]) {
						if (mainArray[i - 1][j]) { //сосед слева
							if (mainArray[i - 1][j].currentFrame == v2 || mainArray[i - 1][j].currentFrame == v21 || mainArray[i - 1][j].currentFrame == v22) {
								left = 1;
							}
						}
					}
					if (mainArray[i][j - 1]) { //сосед сверху
						if (mainArray[i][j - 1].currentFrame == v2  || mainArray[i][j-1].currentFrame == v21 || mainArray[i][j-1].currentFrame == v22) {
								up = 1;	
						}	
					}
					if (mainArray[i][j + 1]) { //сосед сверху
						if (mainArray[i][j + 1].currentFrame == v2 || mainArray[i][j+1].currentFrame == v21 || mainArray[i][j+1].currentFrame == v22) {
								down = 1;
						}
					}
					if (down == 1 && up == 1 && left == 1 && right == 1){
						currentMovie.gotoAndPlay(v3);
					}
				}
				}
			} 
		}
	}
}

	

