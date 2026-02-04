var stepshit = [];
function onNoteHit(){
    trace(curStep);
    stepshit.push(curStep);

}

function update(){
    if(FlxG.keys.justPressed.E){
        inst.pause();
    }
    if(FlxG.keys.justPressed.F){
        trace(stepshit);
    }
}

function destroy(){
        trace("final", stepshit);
}