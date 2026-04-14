-- ONLINE_SALE 테이블과 OFFLINE_SALE 테이블에서 2022년 3월의 오프라인/온라인 상품 판매 데이터의 판매 날짜, 상품ID, 유저ID, 판매량을 출력하는 SQL문을 작성해주세요.
-- OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL 로 표시해주세요.
-- 결과는 판매일을 기준으로 오름차순 정렬해주시고 판매일이 같다면 상품 ID를 기준으로 오름차순, 상품ID까지 같다면 유저 ID를 기준으로 오름차순 정렬해주세요.
with sales as (
    select sales_date
        , product_id
        , user_id
        , sales_amount
    from online_sale
    
    union all
    
    select sales_date
        , product_id
        , NULL as user_id
        , sales_amount
    from offline_sale
)

select date_format(sales_date, "%Y-%m-%d") as sales_date
    , product_id
    , user_id
    , sales_amount
from sales
where sales_date between "2022-03-01" and "2022-03-31"
order by sales_date asc, product_id asc, user_id asc

-- union all : 중복 허용
-- union : 중복 제거
-- 단순히 table을 합치고 싶을 때
-- 집계할 것인지 단순 출력하는 것인지 잘 확인하기
