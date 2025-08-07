function postCreate(){
	strumLines.members[1].characters[0].cameraOffset = FlxPoint.weak(-100,-100);

	if(dad.curCharacter == "gbi/raz"){
		dad.x += 150;
		dad.y += 150;
	}
}