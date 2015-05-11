package
{
	import flash.display.Sprite;
	
	public class Main extends Sprite
	{
		//色
		private const COLORS:Array = [
			0xFFFFFF, 0xF2385A, 0xF5A503, 0xE9F1DF, 0x56D9CD, 0x3AA1BF
		];
		
		//三角形のサイズ
		private const SIZE:int = 15;
		
		public function Main()
		{
			draw();
		}
		
		private function draw():void
		{
			
			// TODO Auto Generated method stub
			for (var i:int = 0; i < 100; i++) {
				var color:uint = (Math.random() > 0.6) ? COLORS[int(COLORS.length * Math.random())] : 0xFFFFFF;
				var triangle:Triangle = new Triangle(color, SIZE, int(Triangle.TYPES.length * Math.random()));
				triangle.x = 15*i;
				addChild(triangle);
				trace('add', color);
			}
		}
	}
}