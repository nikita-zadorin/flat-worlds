﻿package  {
		
			this.addEventListener(MouseEvent.ROLL_OVER, rollOver);	

			if(Main.clickCountdown == 15){
				if(Main.element2_1.currentFrame == 1 || Main.element2_1.currentFrame == 2){
				if(this.currentFrame != 1){
				if((Math.round(Main.element2_1.x) == this.x-62 && Math.round(Main.element2_1.y) == this.y-31) || (Math.round(Main.element2_1.x) == this.x-62 && Math.round(Main.element2_1.y) == this.y+31) || (Math.round(Main.element2_1.x) == this.x+62 && Math.round(Main.element2_1.y) == this.y-31) || (Math.round(Main.element2_1.x) == this.x+62 && Math.round(Main.element2_1.y) == this.y+31) || (Math.round(Main.element2_1.x) == this.x && Math.round(Main.element2_1.y) == this.y)){
					
					
				}else{
					Main.cantMove.visible = true;
					Main.cantMove.x = x + 62;
					Main.cantMove.y = y - 18;
				}
				}else{
					Main.cantMove.visible = true;
					Main.cantMove.x = x + 62;
					Main.cantMove.y = y - 18;
				}
			}
			if(Main.helperInGame2.currentFrame == 1){
				Main.helperInGame2.gotoAndStop(2);
			}
			if(Main.helperInGame2.currentFrame == 2){
				Main.helperInGame2.gotoAndStop(3);
			}
			if(Main.helperInGame2.currentFrame == 3){
				Main.helperInGame2.gotoAndStop(4);
			}
			if(Main.helperInGame2.currentFrame == 4){
				Main.helperInGame2.gotoAndStop(5);
			}
			}
			Main.clickCountdown = 14;
			Main.selected2 = 1;
			//if(Main.World == 1){
			//}
			Main.toX2_1 = this.x;
			Main.toY2_1 = this.y;
			
			Main.element2_1.gotoAndStop(1);
			Main.element2_1.cr.visible = true;
			Main.element2_1.cl.visible = false;
			if(this.currentFrame == 360){
				this.gotoAndPlay(361);
			}
			if(this.currentFrame == 150){
				this.gotoAndPlay(151);
			}
			if(this.currentFrame == 250){
				this.gotoAndPlay(251);
			}
			if(this.currentFrame == 180){
				this.gotoAndPlay(271);
			}
			if(this.currentFrame == 80){
				this.gotoAndPlay(431);
			}
			if(this.currentFrame == 490){
				this.gotoAndPlay(491);
			}
			if(this.currentFrame == 510){
				this.gotoAndPlay(511);
			}*/
		
		public function leftSelect():void {
			Main.clickCountdown = 14;
			selected = 0;
			Main.selected2 = 1;
			//if(Main.World == 1){
				//Main.LeftVar = 0;
			//}
			
			Main.select.Left.alpha = .7;
			Main.select.Right.alpha = .7;
			Main.select.alpha = 1;
			//this.leftBTN.visible = false;
			//this.rightBTN.visible = false;
			
			Main.toX2_1 = this.x;
			Main.toY2_1 = this.y;
			
			Main.element2_1.gotoAndStop(2);
			Main.element2_1.cr.visible = false;
			Main.element2_1.cl.visible = true;
			
			/*if(this.currentFrame == 90){
				this.gotoAndPlay(91);
			}
			if(this.currentFrame == 20){
				this.gotoAndPlay(41);
			}
			if(this.currentFrame == 360){
				this.gotoAndPlay(41);
			}
			if(this.currentFrame == 60){
				this.gotoAndPlay(61);
			}
			if(this.currentFrame == 190){
				this.gotoAndPlay(221);
			}
			if(this.currentFrame == 130){
				this.gotoAndPlay(201);
			}
			if(this.currentFrame == 380){
				this.gotoAndPlay(421);
			}
			if(this.currentFrame == 260){
				this.gotoAndPlay(481);
			}
			if(this.currentFrame == 200){
				this.gotoAndPlay(501);
			}*/
			}