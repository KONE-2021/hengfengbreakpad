# GitHub Pages 部署指南 / Deployment Guide

## 自动部署步骤 / Automatic Deployment Steps

### 1. 创建GitHub仓库 / Create GitHub Repository

1. 访问 [GitHub](https://github.com) 并登录
1. Visit [GitHub](https://github.com) and log in

2. 点击右上角的 "+" 号，选择 "New repository"
2. Click the "+" in the top right corner, select "New repository"

3. 填写仓库信息：
3. Fill in repository information:
   - **仓库名称**: `hengfeng-brake-pads`
   - **Repository name**: `hengfeng-brake-pads`
   - **描述**: 衡水衡丰摩擦材料有限公司官方网站 / Hengshui Hengfeng Friction Material Co., Ltd. Official Website
   - **公开仓库**: ✓ 选择公开 (Public)
   - **Public repository**: ✓ Select public

4. 点击 "Create repository"
4. Click "Create repository"

### 2. 连接本地仓库 / Connect Local Repository

在终端中运行以下命令：
Run the following commands in your terminal:

```bash
# 添加远程仓库
git remote add origin https://github.com/[你的GitHub用户名]/hengfeng-brake-pads.git

# 替换 [你的GitHub用户名] 为你的实际GitHub用户名
# Replace [your-github-username] with your actual GitHub username

# 推送到GitHub
git branch -M main
git push -u origin main
```

### 3. 启用GitHub Pages / Enable GitHub Pages

1. 进入你的GitHub仓库页面
1. Go to your GitHub repository page

2. 点击 "Settings" 选项卡
2. Click the "Settings" tab

3. 在左侧菜单中找到 "Pages"
3. Find "Pages" in the left menu

4. 在 "Build and deployment" 部分：
4. In the "Build and deployment" section:
   - **Source**: 选择 "Deploy from a branch"
   - **Branch**: 选择 "main"
   - **Folder**: 选择 "/ (root)"
   - 点击 "Save"

5. 等待几分钟让GitHub处理
5. Wait a few minutes for GitHub to process

### 4. 访问你的网站 / Access Your Website

网站将在以下地址可用：
Your website will be available at:
```
https://[你的GitHub用户名].github.io/hengfeng-brake-pads/
```

## 一键部署脚本 / One-Click Deployment Script

将下面的脚本保存为 `deploy.sh` 并运行：
Save the following script as `deploy.sh` and run it:

```bash
#!/bin/bash

# 替换为你的GitHub用户名
GITHUB_USERNAME="your-github-username"

echo "正在部署到GitHub Pages..."
echo "Deploying to GitHub Pages..."

# 添加远程仓库
git remote add origin https://github.com/$GITHUB_USERNAME/hengfeng-brake-pads.git

# 推送到GitHub
git branch -M main
git push -u origin main

echo "部署完成！请手动在GitHub设置中启用GitHub Pages。"
echo "Deployment complete! Please manually enable GitHub Pages in your GitHub repository settings."
echo "网站地址: https://$GITHUB_USERNAME.github.io/hengfeng-brake-pads/"
echo "Website URL: https://$GITHUB_USERNAME.github.io/hengfeng-brake-pads/"
```

运行脚本：
Run the script:
```bash
chmod +x deploy.sh
./deploy.sh
```

## 注意事项 / Important Notes

1. 确保你的GitHub仓库是公开的
1. Make sure your GitHub repository is public

2. GitHub Pages需要几分钟时间来处理
2. GitHub Pages takes a few minutes to process

3. 如果看到404错误，请等待更长时间
3. If you see a 404 error, wait longer

4. 网站支持中英文切换，点击右上角的按钮
4. The website supports Chinese/English switching, click the button in the top right corner

## 联系支持 / Contact Support

如果在部署过程中遇到问题，请：
If you encounter issues during deployment, please:

1. 检查你的网络连接
1. Check your internet connection

2. 确认GitHub用户名正确
2. Confirm GitHub username is correct

3. 查看GitHub仓库设置
3. Check GitHub repository settings

4. 联系技术支持：1453251963@qq.com
4. Contact technical support: 1453251963@qq.com