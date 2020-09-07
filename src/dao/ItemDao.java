package dao; /*インターフェース*/

import java.util.List;

import domain.Item;

public interface ItemDao {

	public List<Item> findAll() throws Exception; /*itemデーブル内全ての情報を取得*/

	public Item findById(Integer id) throws Exception; /*指定したidの情報を取得*/

	public void insert(Item item) throws Exception; /*指定した情報をテーブルへ追加*/

	public void update(Item item) throws Exception; /*指定した商品情報をテーブル内で更新*/

	public void delete(Item item) throws Exception; /*指定した情報をテーブルから削除*/

}
