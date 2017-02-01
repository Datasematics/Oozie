/* pig script for counting the orders */
orders = LOAD '$INPUT' Using PigStorage(',') as (order_id:int,date:chararray,customer_id:int,order_status:chararray);
grouped = Group orders By order_status;
count_orders = Foreach grouped generate group,COUNT_STAR(orders) as cnt;
store count_orders into '$OUTPUT';
