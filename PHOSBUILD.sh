#!/bin/bash

LOG_FILE="/var/log/sqlmap_install.log"

# 定义变量
SOURCE_REPO="https://github.com/sqlmapproject/sqlmap.git"
TARGET_DIR="/opt/PHANTX/sqlmap"
BIN_DIR="/opt/PHANTX/bin"
TOOL_DIR="/opt/PHOS/tool/sqlmap"

# 记录日志
exec > >(tee -a "$LOG_FILE") 2>&1

echo "Starting sqlmap installation at $(date)"

# 克隆sqlmap仓库
echo "Cloning sqlmap repository..."
git clone --depth 1 "$SOURCE_REPO" "$TARGET_DIR"

# 检查克隆是否成功
if [ $? -eq 0 ]; then
    echo "Clone PACKAGE... PASS!"
else
    echo "Clone PACKAGE... FAILED!"
    exit 1
fi

# 复制bin目录下的内容到目标bin目录
echo "Copying binaries to $BIN_DIR..."
cp -Rf "$TARGET_DIR"/phantxbin/* "$BIN_DIR"

# 设置bin目录下的文件权限为755
echo "Setting permissions for binaries..."
chmod -R 755 "$BIN_DIR"

# 移除临时目录
echo "Removing temporary directory $TOOL_DIR..."
rm -rf "$TOOL_DIR"

# 验证安装是否成功
if [ -d "$BIN_DIR" ] && [ -n "$(ls -A "$BIN_DIR")" ]; then
    echo "Installation completed successfully."
else
    echo "Installation failed."
    exit 1
fi

echo "Finished sqlmap installation at $(date)"