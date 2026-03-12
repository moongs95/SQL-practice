-- REST_INFO와 REST_REVIEW 테이블에서 서울에 위치한 식당들의 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회하는 SQL문을 작성해주세요. 
-- 이때 리뷰 평균점수는 소수점 세 번째 자리에서 반올림 해주시고 결과는 평균점수를 기준으로 내림차순 정렬해주시고, 평균점수가 같다면 즐겨찾기수를 기준으로 내림차순 정렬해주세요.
select i.rest_id, i.rest_name, i.food_type, i.favorites, i.address, 
    round(avg(r.review_score), 2) as score
from rest_info i
    join rest_review r on i.rest_id = r.rest_id
where i.address like "서울%"
group by i.rest_id
order by score desc, i.favorites desc

-- join(inner join) : left join + 오른쪽 칼럼 조건 / right join + 왼쪽 칼럼 조건
-- "%서울%"이면 경기도 서울대김밥 이런 경우도 모두 포함이니, 서울에 위치한 식당만 조건을 주려면 "서울%"라고 해야함.
