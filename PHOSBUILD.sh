rm -rf /opt/PHANTX/sqlmap

cd /opt/PHANTX

git clone https://github.com/sqlmapproject/sqlmap

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf sqlmap /opt/PHANTX/bin

chmod -R 755 /opt/PHANTX
rm -rf /opt/PHOS/tool/sqlmap
rm -rf /opt/PHOS/tool/sqlmap