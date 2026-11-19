package;

import flixel.FlxG;
import flixel.FlxSprite;

class BGSprite extends FlxSprite
{
	private var idleAnim:String;

	public function new(image:String, library:String, ?locale:Bool = false, x:Float = 0, y:Float = 0, ?scrollX:Float = 1, ?scrollY:Float = 1, ?anim:Array<String> = null, ?loop:Bool = false, ?framerate:Int = 24)
	{
		trace("========= BGSPRITE " + image);
		trace(image);
		trace(library);
		trace(locale);
		trace(x);
		trace(y);
		trace(scrollX);
		trace(scrollY);
		trace(anim);
		trace(loop);
		trace(framerate);

		super(x, y);

		if (anim != null)
		{	
			trace("anim");

			frames = Paths.getSparrowAtlas(image, library, locale);
			animation.addByPrefix(anim[0], anim[1], framerate, loop);

			if (idleAnim == null)
			{
				idleAnim = anim[0];
				animation.play(idleAnim);
			}
		}
		else
		{
			trace("noanim");
			trace("loadGraphic(Paths.image(image, library, locale)); " + loadGraphic(Paths.image(image, library, locale)));
			if (image != null)
				loadGraphic(Paths.image(image, library, locale));

			active = false;
		}
		scrollFactor.set(scrollX, scrollY);
		antialiasing = SaveData.globalAntialiasing;
		trace("finished");

	}

	public function dance(?forceplay:Bool = false)
	{
		if (idleAnim != null)
			animation.play(idleAnim, forceplay);
	}
}
