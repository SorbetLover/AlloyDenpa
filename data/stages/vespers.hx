var _elased:Float = 0;
function update(elapsed){
    _elased += elapsed * Conductor.bpm / 100;
    dad.y = -300 + 60 * Math.sin(_elased / 1.2); 
}