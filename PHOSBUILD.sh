#!/bin/bash

rm -rf /opt/PHANTX/sqlmap/.git 2>/dev/null

rm -rf /opt/PHANTX/sqlmap 2>/dev/null

if git clone --depth 1 https://github.com/sqlmapproject/sqlmap /opt/PHANTX/sqlmap 2>/dev/null; then
  echo -e "\033[32mCopy PACKAGE... PASS!\033[0m"

else
  exit 1
fi

cp -Rf /opt/PHOS/tool/sqlmap/phantxbin/* /opt/PHANTX/bin/ 2>/dev/null

chmod -R 755 /opt/PHANTX/bin/ 2>/dev/null

rm -rf /opt/PHANTX/sqlmap 2>/dev/null
rm -rf /opt/PHANTX/sqlmap 2>/dev/null
