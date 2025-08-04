import flixel.addons.display.FlxBackdrop;

function beatHit(){
    if(curBeat % 2 == 0){
        for(i in iconArray){
            i.scale.set(1.2,1.2);
        }
                bg.scale.set(1.03,1.03);

    }
}
function postCreate(){
    backdrop = new FlxBackdrop().loadGraphic(Paths.image("menuBGHexL6"));
    backdrop2 = new FlxBackdrop().loadGraphic(Paths.image("menuBGHexL6"));
    backdrop.velocity.set(29,30);
    backdrop2.velocity.set(-29,-30);
    insert(members.indexOf(bg) + 1, backdrop);
    insert(members.indexOf(bg) + 1, backdrop2);
    // trace(songList.songs[2]);
    for(i in 0...songList.songs.length){
        if(StringTools.startsWith(songList.songs[i].name, ">")){
            iconArray[i].visible = false;
        }
    }
}
function update(){
    backdrop.color = bg.color;
    backdrop2.color = bg.color;
    for(i in iconArray){
        i.angle = FlxMath.lerp(i.angle, 1, Conductor.crochet / 10000);
        i.scale.x = FlxMath.lerp(i.scale.x, 1, Conductor.crochet / 10000);
        i.scale.y = i.scale.x;
    }
    bg.scale.x = FlxMath.lerp(bg.scale.x, 1, 0.06);
    bg.scale.y = bg.scale.x;

}

function postUpdate(){
        if(controls.UP_P){
        if(StringTools.startsWith(songList.songs[curSelected].name, ">")){
            changeSelection(-1);
            trace("asd");
        }
    }
    if(controls.DOWN_P){
        if(StringTools.startsWith(songList.songs[curSelected].name, ">")){
            changeSelection(1);
            trace("ASD");
        }
    }
}