-- 동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요.
select name , datetime
from animal_ins
order by animal_id desc
