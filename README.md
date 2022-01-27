# dameng_zabbix

### Usage
```
	mkdir $ZABBIXPATH/dm/
	cp scripts/dm.* $ZABBIXPATH/dm/
	cp template_db_dameng.conf $ZABBIXCONFPATH/zabbix_agentd.conf.d/ 
	systemctl status zabbix_agentd
```

> error while loading shared libraries: libdisql_dll.so: cannot open shared object file: No such file or directory

Add Dameng bin/lib path before your template_db_dameng.conf in every command line, like this:

```
UserParameter=dm.ping[*], cd /opt/dmdbms/bin && /opt/dmdbms/bin/disql -L -S $1/$2@$3:$4 -c 'set hea off' -e "SELECT 1;" | grep -v '^$'
```
