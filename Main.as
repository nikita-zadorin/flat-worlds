﻿package {
		//static public var UFOpos = 0;
		//public var element2_2:ElementClass2_2 = new ElementClass2_2();
		static public var element2_1:ElementClass2_1 = new ElementClass2_1();
		public var element2_3:ElementClass2_3 = new ElementClass2_3();
		public var element2_4:ElementClass2_4 = new ElementClass2_4();
		public var element2_5:ElementClass2_5 = new ElementClass2_5();
		public var gameSprite1:Sprite = new Sprite();
		public var gameSprite2:Sprite = new Sprite();
		static public var helperInGame2:HelperInGame2 = new HelperInGame2();
		public var gameUfo:Sprite = new Sprite();
		public var gameRadia:Sprite = new Sprite();
		public var gameMonster:Sprite = new Sprite();
		static public var cantMove:CantMove = new CantMove();
		public var inDev:InDev  = new InDev();
		public var animation2:Animation2  = new Animation2();
		static public var toX2_1 = 392;
		static public var toY2_1 = 226;
		static public var toX2_5 = 0;
		static public var toY2_5 = 0;
		static public var clickCountdown = 15;
		public var mmove = 0;
		var ufoArray:Array = [];
		var radiaArray:Array = [];
		var monsterArray:Array = [];
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
			addChild(gameSprite1);
			addChild(gameSprite2);
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
			
			helperInGame.visible = true;
			gameHelp.addChild(helperInGame2);
			helperInGame2.visible = false;
			
			//progress.progMC.c1.visible = false;
			//progress.progMC.c12.visible = false;
			
			addChild(inDev);
			inDev.visible = false;
			
			addChild(animation2);

			element2_1.x = -100;
			element2_1.y = -100;
			element2_1.mouseEnabled = false;
			element2_1.mouseChildren = false;
			
			addChild(element2_3);
			element2_3.x = -100;
			element2_3.y = -100;
			
			//addChild(element2_2);
			addChild(cantMove);
			
			//element2_2.x = -100;
			//element2_2.y = -100;
			//element2_2.mouseEnabled = false;
			//element2_2.mouseChildren = false;
			
			animation2.visible = false;
			cantMove.visible = false;
			
			
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
			
				Indicator.visible = true;
				Indicator2.visible = false;
				progress.helpAgainBTN.visible = true;
			if(World == 2){
				//trace(indVar);
				Indicator2.gotoAndStop(indVar);
				Indicator2.visible = true;
				Indicator.visible = false;
				progress.helpAgainBTN.visible = false;
			}
			
				progCheck();
				if(clickCountdown == 15){
				
								
				//check6_1(270,100,441,20); // монстр уничтожил триногу
				
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
			progress.menuBTN.addEventListener(MouseEvent.CLICK, mainMenuClick);
			inDev.okBTN.addEventListener(MouseEvent.CLICK, okClick);
			animation2.closeHelp.addEventListener(MouseEvent.CLICK, closeAni);
			select.Left.addEventListener(MouseEvent.MOUSE_UP, changeLeftVar);
			select.Right.addEventListener(MouseEvent.MOUSE_UP, changeRightVar);
			levels.buyLevel2MC.buyBTN.addEventListener(MouseEvent.CLICK, buyLevel2);
			levels.buyLevel2MC.closeBTN.addEventListener(MouseEvent.CLICK, closeBuyLevel2);
			//trace(UFOpos);
		
		/*function mMove(event:MouseEvent):void{
				coursor.x = event.stageX;
				coursor.y = event.stageY;
				event.updateAfterEvent();
		}*/
		
		public function okClick(e:MouseEvent):void{
			inDev.visible = false;
		}
		
		public function mainMenuClick(e:MouseEvent):void{
			levels.gotoAndStop(1);
			levels.alpha = 1;
			levels.visible = true;
			progress.gotoAndStop(1);
			clearFunc();
		}
		
		public function buyLevel2(e:MouseEvent):void{
			level2opened = 1;
			levels.buyLevel2MC.visible = false;
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
			helperInGame.visible = false;
		
			//element2_1.gotoAndStop(2);
			//element2_1.gotoAndStop(1);
		
		public function createUFO(XX, YY):void {		
			var element2_2:ElementClass2_2 = new ElementClass2_2();
			gameUfo.addChild(element2_2);
			element2_2.x = XX;
			element2_2.y = YY;	
			ufoArray[ufos] = element2_2;
			ufos ++;
		}
			cantMove.visible = false;
			cantMove.visible = false;
			animation2.visible = false;
			createWorld();
			trace("helper");
			helperInGame.visible = true;
		
		public function closeHelpFunc():void {
			GameStarted = 1;
			helper.visible = false;
		}
			helperInGame2.visible = false;
			if(level2opened == 1){
				helperInGame2.visible = true;
				helperInGame.visible = false;
			}else{
				levels.buyLevel2MC.visible = true;
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
			createWorld();
			clearUFO();
			clearRadia();
			clearMonster();
			//element2_2.x = -100;
			///element2_2.y = -100;
			toX2_1 = 392;
			toY2_1 = 226;
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
						if(currentMovie.currentFrame == 1){
						if(Math.round(Main.element2_1.y) == currentMovie.y-31 || Math.round(Main.element2_1.y) == currentMovie.y+31){
									currentMovie.gotoAndPlay(250);
								}else if(rand == 9 && Main.element2_1.x!=392 && Main.element2_1.y!=226){
									currentMovie.gotoAndPlay(270);
								}else if(rand == 10){
									currentMovie.gotoAndPlay(380);
								}else{
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