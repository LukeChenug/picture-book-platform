#!/bin/bash

# 绘本智能体平台 - GitHub部署脚本
# 使用方法：在GitHub上创建仓库后，运行此脚本

echo "🚀 绘本智能体平台 - GitHub部署脚本"
echo "=================================="

# 检查是否已设置远程仓库
if git remote -v | grep -q "origin"; then
    echo "✅ 远程仓库已设置"
else
    echo "❌ 请先在GitHub上创建仓库，然后设置远程仓库："
    echo "   git remote add origin https://github.com/YOUR_USERNAME/picture-book-platform.git"
    echo "   请将 YOUR_USERNAME 替换为您的GitHub用户名"
    exit 1
fi

# 推送代码到GitHub
echo "📤 推送代码到GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ 代码推送成功！"
    echo ""
    echo "🌐 接下来启用GitHub Pages："
    echo "1. 访问您的GitHub仓库页面"
    echo "2. 点击 'Settings' 标签"
    echo "3. 在左侧菜单中找到 'Pages'"
    echo "4. 在 'Source' 下选择 'Deploy from a branch'"
    echo "5. 选择 'main' 分支和 '/ (root)' 文件夹"
    echo "6. 点击 'Save'"
    echo ""
    echo "🎉 完成后，您的绘本平台将在以下网址可用："
    echo "   https://YOUR_USERNAME.github.io/picture-book-platform"
    echo ""
    echo "📝 功能特性："
    echo "   ✅ 在线生成绘本"
    echo "   ✅ 预置绘本阅读"
    echo "   ✅ 3D翻页效果"
    echo "   ✅ 音频播放"
    echo "   ✅ 高质量图片渲染"
else
    echo "❌ 代码推送失败，请检查网络连接和GitHub权限"
fi
