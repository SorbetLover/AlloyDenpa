import flixel.addons.display.FlxBackdrop;
import openfl.display.BlendMode;

var sky:FunkinSprite;
var b1:FlxBackdrop;
var b2:FlxBackdrop;
var ground:FunkinSprite;
var school:FunkinSprite;
var statics:FunkinSprite;
function create(){
    sky = new FunkinSprite().loadGraphic(getShit("weebSky"));
    addThing(sky);
    sky.screenCenter();
    sky.scrollFactor.set(0,0);
    sky.setGraphicSize(FlxG.width + (FlxG.width * camGame.zoom), FlxG.height + (FlxG.height * camGame.zoom));
    sky.y -= 600;


    b1 = new FlxBackdrop().loadGraphic(getShit("poc"));
    add(b1);
    b1.velocity.set(-80,-10);

    b2 = new FlxBackdrop().loadGraphic(getShit("poc"));
    add(b2);
    b2.velocity.set(-40,10);
    b2.scale.set(1.2,1.2);
    b1.alpha = 1;
    b2.alpha = 0.5;


    school = new FunkinSprite().loadGraphic(getShit("weebSchoolnew"));
    addThing(school);
    school.x += 400;
    school.y += 440;

	statics = new FunkinSprite();
	statics.frames = Paths.getSparrowAtlas("stages/monoschool/static");
	statics.animation.addByPrefix("static", "static", 24);
	statics.playAnim("static");
	statics.alpha = 0;
	statics.screenCenter();
	statics.blend = BlendMode.SUBTRACT;


    ground = new FunkinSprite().loadGraphic(getShit("weebStreet"));
    addThing(ground);
    ground.x += 500;
    ground.y += 450;
    ground.scale.set(7,7);
    add(statics);

    for(i in [dad,boyfriend]){
        remove(i);
        insert(100, i);
    }

    if(Options.gameplayShaders == true){
        importScript("data/scripts/rain-effect");
        rainShaderEndIntensity = 0.1;
        rainShaderStartIntensity = 0.1;
        rainShaderScale = 2;
    }
}

function postCreate(){
    healthBar.createFilledBar(0xFF111111, 0xFF555555);
}
function addThing(obj){
    add(obj);
    obj.scale.set(6,6);
    obj.antialiasing = false;
}
function getShit(spr){
    return Paths.image("stages/monoschool/" + spr);
}

function stepHit(){
    if(PlayState.instance.curSong == "damage"){

        if(curStep == 540){
            camHUD.angle = 240;
            camGame.angle = 280;
            FlxTween.tween(camHUD, {angle:360}, 1 * inst.pitch, {ease:FlxEase.cubeOut});
            FlxTween.tween(camGame, {angle:360}, 1 * inst.pitch, {ease:FlxEase.cubeOut});
            statics.alpha = 0.2;
        }
        if(curStep == 544){
            statics.alpha = 0;
        }
    }
}