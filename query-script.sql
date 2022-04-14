insert into pharmacy values(29, 'dipdil', 20, '21/10/25');
insert into pharmacy values(19, 'manitol', 100, '1/1/23');
update pharmacy set qnty = 20 where id = 19;
update pharmacy set name = 'andropsis' where id = 19;
delete from pharmacy where id = 19;
select * from pharmacy;
select * from bill b inner join doctor d on d.id = b.Doctor_id;
select * from insurance i inner join patient p on p.Insurance_id = i.id;
select * from pharmacy group by qnty;
select sum(amount) from bill;
select name, specialization from doctor group by specialization;
select p.name, d.name, b.amount
from patient p, doctor d, bill b
where p.id = b.Patient_id and d.id = b.Doctor_id;