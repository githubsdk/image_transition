package ghostcat.gxml.spec
{
	import flash.utils.Dictionary;

	/**
	 * 物品组管理类（用于容纳数据组）
	 * @author flashyiyi
	 * 
	 */
	public class ItemGroup
	{
		/**
		 * 组id
		 */
		public var id:String;
		/**
		 * id属性名
		 */
		public var idField:String = "id";
		/**
		 * 数据列表
		 */
		public var data:Array = [];
		/**
		 * 数据ID字典
		 */
		public var map:Dictionary = new Dictionary();
		
		/**
		 * 添加一个子对象
		 * @param item
		 * 
		 */
		public function add(item:*):void
		{
			data.push(item);
			map[item[idField]] = item;
		}
		
		/**
		 * 根据id获得子对象
		 * @param id
		 * @return 
		 * 
		 */
		public function getItemById(id:*):*
		{
			return map[id];
		}
	}
}