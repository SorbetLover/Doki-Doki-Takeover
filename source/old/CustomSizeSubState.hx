import PopupMessage;
import flixel.addons.ui.FlxInputText;
import flixel.ui.FlxButton;
import flixel.FlxSubState;
import flixel.FlxG;
class CustomSizeSubState extends MusicBeatSubstate {
    var widbut:FlxInputText;
    var heibut:FlxInputText;
    var finbut:FlxButton;
    public function new(){
        super();
        widbut = new FlxInputText(0,0, 100, 10, 0xFF000000, 0xFFFFFFFF, true);
        heibut = new FlxInputText(0,0, 100, 10, 0xFF000000, 0xFFFFFFFF, true);
        widbut.screenCenter();
        heibut.screenCenter();
        heibut.x += 150;

        finbut = new FlxButton(0,0,function(){
            // FlxG.save.data.customGameSize = [widbut.text, heibut.text];
            // FlxG.save.flush();
        });

        finbut.screenCenter();
        finbut.y += 200;

        add(widbut);
        add(heibut);
        add(finbut);

    }
}