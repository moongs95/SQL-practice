-- 잡은 물고기 중 길이가 10cm 이하인 물고기의 수를 출력하는 SQL 문을 작성해주세요.
select count(*) as fish_count
from fish_info
where length is null
