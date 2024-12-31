rm -rf /opt/PHANTX/sqlmap
rm -rf /opt/PHANTX/sqlmap

git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git /opt/PHANTX/sqlmap

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf phantxbin/* /opt/PHANTX/bin

rm -rf /opt/PHOS/tool/*
rm -rf /opt/PHOS/tool/*

chown -R phantx:phantx /opt/PHANTX
chmod -R 755 /opt/PHANTX/
