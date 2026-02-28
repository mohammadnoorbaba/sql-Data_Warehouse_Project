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

