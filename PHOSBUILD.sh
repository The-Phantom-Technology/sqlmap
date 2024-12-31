rm -rf /opt/ANDRAX/sqlmap

git clone /opt/ANDRAX/sqlmap

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin

chown -R andrax:andrax /opt/ANDRAX
chmod -R 755 /opt/ANDRAX
