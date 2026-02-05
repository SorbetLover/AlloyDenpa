var funny:FunkinSprite;
function postCreate(){
    dad.visible = false;
    gf.visible = false;
    boyfriend.visible = false;

    funny = new FunkinSprite();
    funny.frames = Paths.getSparrowAtlas("funny");
    add(funny);
    funny.scrollFactor.set(0,0);
    funny.setGraphicSize(1280, 720);
    funny.screenCenter();
    funny.animation.addByPrefix("funny", "funny idle", 24);
    funny.playAnim("funny");

    healthBar.createFilledBar(0xFFe121c5, 0xFF86faff);
    healthBar.percent = health;
}