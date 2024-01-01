use db_webapi;

select pdd.*
from tb_productdetails pdd 
inner join tb_productdetailpropertydetails pddppd 
on pdd.productDetailId = pddppd.productDetailId
inner join tb_propertydetails ppd
on ppd.propertyDetailId = pddppd.propertyDetailId
inner join tb_properties pp 
on pp.propertyId = ppd.propertyId
where propertySort = (select max(propertySort) from tb_properties
where productId = 2)
and pp.productId = 2;

-- ao L Hong (3) update ->(1) -> (1) giam 2 (-2)
-- ao L (25) -> (23) => 
--ao L Hong (1) update (40) -> (40): tang 39 (+39)
-->  ao L (23) -> (62)

-- 17: 3 - 5 - 14 => 5 - 5+2=7 - 14+2=16