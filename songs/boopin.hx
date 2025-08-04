var wrenchwatchdog = true;
var dusannemecasshole = true;
var anglething = 20;
function beatHit(){
    iconP1.angle = wrenchwatchdog ? -anglething : anglething;
    iconP2.angle = wrenchwatchdog ? anglething : -anglething;

    if(dusannemecasshole == true){
        iconP1.y = wrenchwatchdog ? healthBar.y - (iconP1.height / 2) - 20 : healthBar.y - (iconP1.height / 2) + 40;
        iconP2.y = wrenchwatchdog ? healthBar.y - (iconP1.height / 2) - 20 : healthBar.y - (iconP1.height / 2) + 40;
    }
    wrenchwatchdog = !wrenchwatchdog;

}
function create(){
    trace(dusannemecasshole ? "Yes he is" : "YES HE IS. YOU FUCKER");
}
function update(){
    iconP2.angle = FlxMath.lerp(iconP2.angle, 0, 0.08);
    iconP1.angle = FlxMath.lerp(iconP1.angle, 0, 0.08);
    iconP1.y = FlxMath.lerp(iconP1.y, healthBar.y - (iconP1.height / 2), 0.1);
    iconP2.y = FlxMath.lerp(iconP2.y, healthBar.y - (iconP2.height / 2), 0.1);
}