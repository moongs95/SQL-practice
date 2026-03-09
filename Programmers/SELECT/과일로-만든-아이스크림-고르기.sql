select f.flavor
from first_half f
    left join icecream_info i on f.flavor = i.flavor
where f.total_order > 3000
    and ingredient_type like "%fruit%"
order by f.total_order desc
