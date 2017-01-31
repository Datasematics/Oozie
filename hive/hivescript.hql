create external table If Not Exists Ex_emp(eid int,ename string,sal int,desg string)
Row Format delimited
Fields Terminated BY '\t'
Stored as TextFile
Location 'path';  //HDFS path of file
