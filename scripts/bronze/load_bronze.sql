TRUNCATE TABLE bronze.crm_cust_info;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dwh_project/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(@cst_id, @cst_key, @cst_firstname, @cst_lastname, @cst_marital_status, @cst_gndr, @cst_create_date)
SET 
    cst_id = NULLIF(TRIM(@cst_id), ''),
    cst_key = NULLIF(TRIM(@cst_key), ''),
    cst_firstname = NULLIF(TRIM(@cst_firstname), ''),
    cst_lastname = NULLIF(TRIM(@cst_lastname), ''),
    cst_marital_status = NULLIF(TRIM(@cst_marital_status), ''),
    cst_gndr = NULLIF(TRIM(@cst_gndr), ''),
    cst_create_date = NULLIF(TRIM(@cst_create_date), '');

TRUNCATE TABLE bronze.crm_prd_info;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dwh_project/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(@prd_id, @prd_key, @prd_nm, @prd_cost, @prd_line, @prd_start_dt,@prd_end_dt)
SET 
    prd_id = NULLIF(TRIM(@prd_id), ''),
    prd_key = NULLIF(TRIM(@prd_key), ''),
    prd_nm = NULLIF(TRIM(@prd_nm), ''),
    prd_cost = NULLIF(TRIM(@prd_cost), ''),
    prd_line = NULLIF(TRIM(@prd_line), ''),
    prd_start_dt = NULLIF(REPLACE(REPLACE(@prd_start_dt, '\r', ''), '\n', ''), ''),
    prd_end_dt = NULLIF(REPLACE(REPLACE(@prd_end_dt, '\r', ''), '\n', ''), '');

TRUNCATE TABLE bronze.crm_sales_details;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dwh_project/source_crm/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(@sls_ord_num,@sls_prd_key,@sls_cust_id,@sls_order_dt,@sls_ship_dt,@sls_due_dt,@sls_sales,@sls_quantity,@sls_price)
SET 
    sls_ord_num = NULLIF(TRIM(@sls_ord_num), ''),
    sls_prd_key = NULLIF(TRIM(@sls_prd_key), ''),
    sls_cust_id = NULLIF(TRIM(@sls_cust_id), ''),
    sls_order_dt = NULLIF(TRIM(@sls_order_dt), ''),
    sls_ship_dt = NULLIF(TRIM(@sls_ship_dt), ''),
	sls_due_dt = NULLIF(TRIM(@sls_due_dt), ''),
    sls_sales = NULLIF(TRIM(@sls_sales), ''),
    sls_quantity = NULLIF(TRIM(@sls_quantity), ''),
    sls_price = NULLIF(REPLACE(REPLACE(@prd_end_dt, '\r', ''), '\n', ''), '');
TRUNCATE TABLE bronze.erp_loc_a101;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dwh_project/source_erp/loc_a101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(@cid, @cntry)
SET 
    cid = NULLIF(TRIM(@cid), ''),
    cntry = NULLIF(TRIM(@cntry), '');


TRUNCATE TABLE bronze.erp_cust_az12;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dwh_project/source_erp/cust_az12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(@cid, @bdate, @gen)
SET 
    cid = NULLIF(TRIM(@cid), ''),
    bdate = NULLIF(TRIM(@bdate), ''),
    gen = NULLIF(TRIM(@gen), '');

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dwh_project/source_erp/px_cat_g1v2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(@id, @cat, @subcat, @maintenance)
SET 
    id = NULLIF(TRIM(@id), ''),
    cat = NULLIF(TRIM(@cat), ''),
    subcat = NULLIF(TRIM(@subcat), ''),
    maintenance = NULLIF(TRIM(@maintenance), '');
