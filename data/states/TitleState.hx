var uhm = false;
function beatHit(){
    if(curBeat == 0){
        
        Conductor.changeBPM(100);
    }
    if(curBeat == 9 && uhm == false){
        Conductor.changeBPM(150);
    }
    if(curBeat == 18 && uhm == false){
        Conductor.changeBPM(310);
    }
    if(curBeat == 50 && uhm == false){
        uhm = true;
        Conductor.changeBPM(100);
    }
    switch(curBeat){
        case 40, 46:
            FlxG.camera.zoom = 1.3;
    }
}
function postCreate(){
        Conductor.changeBPM(100);
}

function update(){
    FlxG.camera.zoom = FlxMath.lerp(FlxG.camera.zoom, 1, 0.06);
    if(FlxG.keys.justPressed.O){
        startIntro();
        uhm = false;
        FlxG.sound.music.stop();
        initialized = false;
        skippedIntro = false;
        CoolUtil.playMenuSong();
    }
}