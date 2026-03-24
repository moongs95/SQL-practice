-- FISH_INFO 테이블에서 잡은 BASS와 SNAPPER의 수를 출력하는 SQL 문을 작성해주세요.
select count(*) as fish_count
from fish_info i
    join fish_name_info n on i.fish_type = n.fish_type
where n.fish_name in ("BASS", "SNAPPER")
