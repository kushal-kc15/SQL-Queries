--remove dashes(-) from a phone number
select
'123-456-789' as phone,
replace('123-456-789','-','') as clean_phone

--replace file extension from txt to csv
select
'report.txt' as old_file_name,
replace('report.txt','txt','csv') as new_file_name