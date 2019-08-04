-- Question A part 2
select lag(count(a.id),1) over (order by date_part('year',a.create))
from
public.ads a
left join public.category b on a.category_id = b.id
left join public.region c on  a.region_id = c.id
where b.subsubcategory = 'Beef Cattle' and c.county='Tipperary' and 
(date_part('year',a.publish) =2016 or date_part('year',a.publish) =2017)
group by date_part('year',a.create);
