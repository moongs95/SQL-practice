-- ROOT 아이템을 찾아 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME)을 출력하는 SQL문을 작성해 주세요. 이때, 결과는 아이템 ID를 기준으로 오름차순 정렬해 주세요.
select i.item_id
    , i.item_name
from item_info i
    left join item_tree t on i.item_id = t.item_id
where t.parent_item_id is null
order by i.item_id asc
