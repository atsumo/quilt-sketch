package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	[SWF(width = "1920", height = "1200", frameRate = "30", backgroundColor = "#FFFFFF")]
	public class Main extends Sprite
	{
		//色
		private const COLORS:Array = [
			0xFFFFFF, 0xF2385A, 0xF5A503, 0xE9F1DF, 0x56D9CD, 0x3AA1BF
		];
		
		//三角形のサイズ
		private const BASE_SIZE:int = 20;
		private const SIZES:Array = [BASE_SIZE, BASE_SIZE, BASE_SIZE];
		public function Main()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			initialize();
		}
		
		private function initialize():void
		{
			draw();
		}
		
		private function draw():void
		{
			var row:int = Math.floor(stage.stageWidth / BASE_SIZE);
			var col:int = Math.floor(stage.stageHeight / BASE_SIZE);
			for (var y:int = 0; y < col; y++) {
				for (var x:int = 0; x < row; x++) {
					var size:int = SIZES[int(Math.random() * SIZES.length)];
					var color:uint = (Math.random() > 0.6) ? COLORS[int(COLORS.length * Math.random())] : 0xFFFFFF;
					var triangle:Triangle = new Triangle(color, size, int(Triangle.TYPES.length * Math.random()));
					triangle.x = size * x;
					triangle.y = size * y;
					if (color !== 0xFFFFFF)
						addChild(triangle);
					//trace('add', color);	
				}
			}
		}
	}
}