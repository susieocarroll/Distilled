Select generate_series, case when  a.create<=generate_series and a.delete>generate_series or a.delete is NULL then count(a.id) end
from public.ads a, generate_series(timestamp with time zone '2019-07-01', '2019-07-31', '1 day')
group by generate_series, a.create, a.delete;