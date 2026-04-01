-- FISH_INFO 테이블에서 잡은 물고기 중 가장 큰 물고기의 길이를 'cm' 를 붙여 출력하는 SQL 문을 작성해주세요.
select concat(cast(max(length) as decimal(10, 2)), 'cm') as MAX_LENGTH
from fish_info

-- 뒤에 문자열 붙이기는 concat
-- cast(), decimal() 사용해서 int를 float로 변경
-- decimal(10, 2)는 10자리까지 cover
