-- Question 1

select count(*) as Total_Complaints
from comp_db.consumer_complaints 
where Date_Received = Date_Sent_to_Company;

-- Question 2

select Product_Name, count(*) as No_of_Complaints
from comp_db.consumer_complaints 
where Date_Received = Date_Sent_to_Company
group by Product_Name
order by No_of_Complaints desc
limit 3;

-- Question 3

select Issue, count(*) as No_of_Complaints
from comp_db.consumer_complaints
where Date_Received = Date_Sent_to_Company
group by Issue
order by No_of_Complaints desc
limit 5;

-- Question 4

select Company, count(*) as No_of_Complaints
from comp_db.consumer_complaints
where Date_Received = Date_Sent_to_Company
group by Company
order by No_of_Complaints desc
limit 5;

-- Question 5

select Company, count(*) as No_of_Complaints
from comp_db.consumer_complaints
group by Company
order by No_of_Complaints asc
limit 3;

-- Question 6

select Date_Received, count(*) as No_of_Complaints
from comp_db.consumer_complaints
group by Date_Received
order by No_of_Complaints desc
limit 2;

-- Question 7

select Date_Received, count(*) as No_of_Complaints
from comp_db.consumer_complaints
group by Date_Received
order by No_of_Complaints asc
limit 2;

-- Question 8

select Submitted_via as Mode_of_Communication, count(*) as No_of_Complaints
from comp_db.consumer_complaints
group by Mode_of_Communication
order by No_of_Complaints desc
limit 1;

-- Question 9

select StateName, count(*) as No_of_Complaints
from comp_db.consumer_complaints
group by StateName
order by No_of_Complaints desc
limit 2;

-- Question 10

select StateName, Product_Name, count(*) as Most_Complaints
from comp_db.consumer_complaints
where Product_Name = 'Student loan'
group by StateName
order by Most_Complaints desc
limit 1;

-- Question 11

select Company, Consumer_Disputed, count(*) as No_of_Consumer_Dispute
from comp_db.consumer_complaints
where Consumer_Disputed = 'Yes'
group by Company
order by No_of_Consumer_Dispute desc
limit 2;