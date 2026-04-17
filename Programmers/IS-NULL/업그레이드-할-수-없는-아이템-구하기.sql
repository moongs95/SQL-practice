-- 더 이상 업그레이드할 수 없는 아이템의 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME), 아이템의 희귀도(RARITY)를 출력하는 SQL 문을 작성해 주세요. 이때 결과는 아이템 ID를 기준으로 내림차순 정렬해 주세요.
select item_id
    , item_name
    , rarity
from item_info
where item_id not in (
    select distinct(parent_item_id)
    from item_tree
    where parent_item_id is not null
)
order by item_id desc

-- not in을 쓰려면 null값이 없어야 함.
