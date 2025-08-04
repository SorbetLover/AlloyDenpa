function postCreate(){
	strumLines.members[1].characters[0].cameraOffset = FlxPoint.weak(-100,-100);
	circle.animation.stop();
}
var _elased:Float = 0;
function update(elapsed){
    _elased += elapsed * Conductor.bpm / 100;
    dad.y = -400 + 60 * Math.sin(_elased / 1.2); 
}