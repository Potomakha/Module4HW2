/*task 1*/
select * 
from Sales.Customer

/*task 2*/
select *
from Sales.Store store
order by store.Name

/*task 3*/
select top(10) *
from HumanResources.Employee e
where e.BirthDate > '1989-09-28'

/*task 4*/
select e.NationalIDNumber, e.LoginID, e.JobTitle
from HumanResources.Employee e
where e.LoginID like '%0'
order by e.JobTitle desc

/*task 5*/
select *
from Person.Person p
where year(p.ModifiedDate) = 2008 and p.MiddleName is not null and p.Title is null

/*task 6*/
select distinct d.Name
from HumanResources.Department d
inner join HumanResources.EmployeeDepartmentHistory e
on e.DepartmentID = d.DepartmentID
where e.EndDate is null

/*task 7*/
select s.TerritoryID, count(s.CommissionPct) commision_count
from Sales.SalesPerson s
group by s.TerritoryID
having count(s.CommissionPct) > 0

/*task 8*/
select *
from HumanResources.Employee e
where e.VacationHours = (
	select Max(e.VacationHours)
	from HumanResources.Employee e
)

/*task 9*/
select *
from HumanResources.Employee e
where e.JobTitle = 'Sales Representative'
or e.JobTitle = 'Network Administrator'
or e.JobTitle = 'Network Manager'

/*task 10*/
select count(*)
from HumanResources.Employee e
left join Purchasing.PurchaseOrderHeader p
on e.BusinessEntityID = p.EmployeeID