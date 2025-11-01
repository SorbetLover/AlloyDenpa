
function postCreate(){
    PauseSubState.script = 'data/scripts/pauseSong';
}
    
function postUpdate(){
    if(FlxG.keys.justPressed.F1){
        player.cpu = !player.cpu;
    }
}

