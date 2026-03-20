-- USER_INFO 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력하는 SQL문을 작성해주세요.
select count(*) as users
from user_info
where joined between "2021-01-01" and "2021-12-31"
    and age between 20 and 29
