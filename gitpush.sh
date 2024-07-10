#!/bin/bash

# 检查是否提供了提交信息
if [ -z "$1" ]
then
  echo "请提供提交信息，例如： ./gitpush.sh \"提交信息\""
  exit 1
fi

# 获取提交信息
commit_message="$1"

# 进入镜像目录
cd /home/ubuntu/py

# 添加所有修改和未跟踪的文件
git add .

# 提交更改
git commit -m "$commit_message"

# 推送到远程仓库
git push origin main

# 输出完成信息
echo "代码已成功推送到远程仓库"

