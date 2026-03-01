-- Table 1 bronze.crm_cust_info
select
*
from bronze.crm_cust_info

-- Analysing and exploration of data
-- data quality checks
-- 1. finding any duplicates in primary key

SELECT
cst_id,
Count(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING Count(*) > 1 OR cst_id IS NULL

-- observation we have duplicates and null values in primary key which is not acceptable


-- 2 finding for any unwanted spaces in varchar columns

select
cst_firstname
from bronze.crm_cust_info
where cst_firstname != TRIM(cst_firstname)


select
cst_lastname
from bronze.crm_cust_info
where cst_firstname != TRIM(cst_firstname)


select
cst_marital_status
from bronze.crm_cust_info
where cst_marital_status != TRIM(cst_marital_status)

select
cst_gndr
from bronze.crm_cust_info
where cst_gndr != TRIM(cst_gndr)

-- we observe from this we have unwanted spaces from both columns firstname and lastname


-- Table 2 : bronze.crm_prd_info



-- checking duplicates in primary key or any null value in primary key
select
prd_id,
count(*)
from bronze.crm_prd_info
group by prd_id
having count(*) > 1 OR prd_id IS NULL

-- checking for any unwanted spaces and nulls
select
prd_key
from bronze.crm_prd_info
where prd_key != trim(prd_key) OR prd_key IS NULL


select
prd_nm
from bronze.crm_prd_info
where prd_nm != trim(prd_nm) OR prd_nm IS NULL


-- data quality if cost any product is negative or null
select
prd_cost
from bronze.crm_prd_info
where prd_cost < 0 OR prd_cost IS NULL

-- checking for cardinality
select distinct
prd_line
from bronze.crm_prd_info
-- counting nulls
select
prd_end_dt,
count(*)
from bronze.crm_prd_info
where prd_end_dt IS NULL
group by prd_end_dt
having count(*) > 1






