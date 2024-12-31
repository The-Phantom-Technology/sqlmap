rm -rf /opt/PHANTX/sqlmap
rm -rf /opt/PHANTX/sqlmap

cd /opt/PHANTX

git clone --depth 1 https://github.com/sqlmapproject/sqlmap /opt/PHANTX/sqlmap


if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cd /opt/PHOS/tool/sqlmap

cp -Rf phantxbin/* /opt/PHANTX/bin

chmod -R 755 /opt/PHANTX/bin

rm -rf /opt/PHOS/tool/sqlmap
rm -rf /opt/PHOS/tool/sqlmap