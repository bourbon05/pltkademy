
#!/bin/bash

#creating a directory:
mkdir config_files/

#creating config files:
touch ./config_files/config{1..100}.conf 

#filling config files with server name:
for data in config_files/config{1..100}.conf ; do
	echo "old_server_name" >> $data;
done

#searching and replacing old server name:
sed -i 's/old_server_name/New_Server_Name/g' config_files/config{1..100}.conf 

echo "Operation completed successfully"
