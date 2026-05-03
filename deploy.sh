#!/bin/bash
set -e

echo "📦 准备发布到 GitHub Pages..."

# 检查是否已经是 git 仓库
if [ ! -d ".git" ]; then
    echo "初始化 Git 仓库..."
    git init
    git branch -M main
fi

# 添加所有文件
echo "添加文件到 Git..."
git add .
git commit -m "Update: 云策计划Agents监控看板 - $(date '+%Y-%m-%d %H:%M:%S')" || echo "没有新的更改"

echo ""
echo "✅ 准备完成！"
echo ""
echo "📋 接下来请执行以下步骤："
echo ""
echo "1. 在 GitHub 创建新仓库："
echo "   - 访问 https://github.com/new"
echo "   - 仓库名: agents-dashboard (或其他名称)"
echo "   - 设置为 Public (公开)"
echo "   - 不要勾选任何初始化选项"
echo ""
echo "2. 关联远程仓库并推送："
echo "   git remote add origin https://github.com/你的用户名/agents-dashboard.git"
echo "   git push -u origin main"
echo ""
echo "3. 启用 GitHub Pages："
echo "   - 进入仓库 Settings → Pages"
echo "   - Source 选择 'main' 分支"
echo "   - 点击 Save"
echo ""
echo "4. 几分钟后访问你的看板："
echo "   https://你的用户名.github.io/agents-dashboard/"
echo ""
