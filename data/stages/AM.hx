var ttt;
var initialPos = [];
var disableModchart = true;
function postCreate(){
	ttt = FlxEase.cubeIn;
	for(i in [dad, TooBright, bright, EndPink, Pinkybg, RUV, RUVANGRY, SARVANGRY, SARV]){
		i.scrollFactor.set(0,0);
		i.screenCenter(); 
	}
	for(i in [SARV,SARVANGRY]){
		i.x += 700;
		i.y += 200;
	}
	for(i in [RUV, RUVANGRY]){
		i.x -= 700;
		i.y += 200;
	}
	dad.y += 180;
	for(e in [RUV,RUVANGRY,SARV,SARVANGRY]){
		e.alpha = 0.00000000001;
	}
	for(i in 0...4){
		strumLines.members[0].members[i].noteAngle = 0;
		strumLines.members[1].members[i].noteAngle = 0;
	}
	initialPos.push(strumLines.members[0].members[0].x);
	initialPos.push(strumLines.members[0].members[1].x);
	initialPos.push(strumLines.members[0].members[2].x);
	initialPos.push(strumLines.members[0].members[3].x);

	initialPos.push(strumLines.members[1].members[0].x);
	initialPos.push(strumLines.members[1].members[1].x);
	initialPos.push(strumLines.members[1].members[2].x);
	initialPos.push(strumLines.members[1].members[3].x);


}
function stepHit(){
	if(disableModchart == false){
			switch(curStep){
				case 150:
					for(e in 0...4){
						FlxTween.tween(strumLines.members[1].members[e], {x: strumLines.members[1].members[e].x + 400, alpha:0.00001, angle:360},0.5, {ease:FlxEase.cubeIn});

						FlxTween.tween(strumLines.members[0].members[e], {angle:360, x: (FlxG.width / 2) + (110*e) - 220}, 0.5, {ease:ttt});

					}
			}
	}
}

//finishing ts later