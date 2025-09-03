#!/bin/bash

# 绘本编辑阅读平台 - GitHub Pages 部署脚本

echo "🚀 开始部署绘本编辑阅读平台到GitHub Pages..."

# 检查Git是否已初始化
if [ ! -d ".git" ]; then
    echo "📦 初始化Git仓库..."
    git init
fi

# 添加所有文件
echo "📁 添加文件到Git..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S') - 绘本平台更新"

# 检查远程仓库
if ! git remote | grep -q origin; then
    echo "⚠️  请先设置远程仓库："
    echo "git remote add origin https://github.com/你的用户名/仓库名.git"
    echo "然后运行：git push -u origin main"
    exit 1
fi

# 推送到GitHub
echo "🌐 推送到GitHub..."
git push origin main

echo "✅ 部署完成！"
echo "🌍 网站地址：https://你的用户名.github.io/仓库名/"
echo "⏰ 请等待几分钟让GitHub Pages更新生效"
