--sort of like a safety net for you to try a code before committing it
--must begin with "begin transaction"

begin transaction;

insert into job (Description, Salary) values ('TEST', 1000000);

rollback transaction;

select * from job order by id desc;