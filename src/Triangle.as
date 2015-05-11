package
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	public class Triangle extends Sprite
	{
		private var _color:uint;
		private var _size:int;
		private var _type:int;
		
		//TODO: Matrixにしてもいいかも
		public static const TYPES:Array = [
			//通常三角形
			[0, 0, 1, 0, 0, 1],
			[0, 1, 1, 1, 1, 0],
			[0, 0, 1, 0, 1, 1],
			[0, 0, 0, 1, 1, 1]
		];
		
		public function Triangle(color:uint = 0xFFFFFF, size:int = 10, type:int = 0)
		{
			_color = color;
			_size = size;
			_type = type;
			draw();
		}
		
		public function draw():void
		{
			var g:Graphics = this.graphics;
			g.beginFill(_color);
			g.drawTriangles(createVector());
			g.endFill();
		}
		
		private function createVector():Vector.<Number>
		{
			var positions:Array = [];
			var temp:Array = TYPES[_type];
			for (var i:int = 0; i < temp.length; i++) {
				positions.push(temp[i] * _size);
			}
			
			return Vector.<Number>(positions);
		}
	}
}