#!/bin/bash

# 衡水衡丰摩擦材料有限公司网站部署脚本
# Hengfeng Brake Pad Company Website Deployment Script

# 请将下面替换为你的GitHub用户名
# Please replace below with your GitHub username
GITHUB_USERNAME="YOUR_GITHUB_USERNAME"

echo "=========================================="
echo "衡丰外贸网站部署脚本 / Hengfeng Website Deployment"
echo "=========================================="
echo ""

# 检查是否已设置用户名
if [ "$GITHUB_USERNAME" = "YOUR_GITHUB_USERNAME" ]; then
    echo "❌ 错误：请先编辑此脚本，将 YOUR_GITHUB_USERNAME 替换为你的实际GitHub用户名"
    echo "❌ Error: Please edit this script and replace YOUR_GITHUB_USERNAME with your actual GitHub username"
    exit 1
fi

echo "✅ 开始部署到GitHub..."
echo "✅ Starting deployment to GitHub..."

# 添加远程仓库（如果还没添加的话）
if ! git remote get-url origin &>/dev/null; then
    echo "📡 添加远程仓库..."
    echo "📡 Adding remote repository..."
    git remote add origin https://github.com/$GITHUB_USERNAME/hengfeng-brake-pads.git
fi

# 确保在main分支上
git branch -M main

# 推送到GitHub
echo "📤 推送代码到GitHub..."
echo "📤 Pushing code to GitHub..."
git push -u origin main

echo ""
echo "=========================================="
echo "✅ 部署完成！/ Deployment complete!"
echo "=========================================="
echo ""
echo "📋 接下来的步骤：/ Next steps:"
echo "1. 访问你的GitHub仓库: https://github.com/$GITHUB_USERNAME/hengfeng-brake-pads"
echo "1. Visit your GitHub repository: https://github.com/$GITHUB_USERNAME/hengfeng-brake-pads"
echo ""
echo "2. 点击 Settings 选项卡"
echo "2. Click the Settings tab"
echo ""
echo "3. 在左侧菜单中找到 Pages"
echo "3. Find Pages in the left menu"
echo ""
echo "4. 在 Build and deployment 中设置："
echo "4. In Build and deployment, set:"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main"
echo "   - Folder: / (root)"
echo ""
echo "5. 点击 Save"
echo "5. Click Save"
echo ""
echo "🌐 网站将在以下地址可用：/ Website will be available at:"
echo "📱 主页面: https://$GITHUB_USERNAME.github.io/hengfeng-brake-pads/home.html"
echo "🇨🇳 中文版: https://$GITHUB_USERNAME.github.io/hengfeng-brake-pads/index.html"
echo "🇬🇧 英文版: https://$GITHUB_USERNAME.github.io/hengfeng-brake-pads/en.html"
echo ""
echo "⏳ 请等待几分钟让GitHub处理部署..."
echo "⏳ Please wait a few minutes for GitHub to process the deployment..."
echo ""