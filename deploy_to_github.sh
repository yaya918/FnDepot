#!/bin/bash

# FnDepot 仓库部署脚本
# 使用方法: ./deploy_to_github.sh <你的GitHub用户名>

set -e

if [ $# -eq 0 ]; then
    echo "使用方法: $0 <你的GitHub用户名>"
    echo "示例: $0 yourusername"
    exit 1
fi

GITHUB_USER="$1"
REPO_NAME="FnDepot"
REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

echo "=== FnDepot 仓库部署脚本 ==="
echo "GitHub 用户名: $GITHUB_USER"
echo "仓库名称: $REPO_NAME"
echo "仓库URL: $REPO_URL"
echo ""

# 检查是否已安装 git
if ! command -v git &> /dev/null; then
    echo "错误: 未找到 git 命令，请先安装 git"
    exit 1
fi

# 检查当前目录
if [ ! -f "fnpack.json" ]; then
    echo "错误: 请在 FnDepot 仓库根目录运行此脚本"
    echo "当前目录: $(pwd)"
    exit 1
fi

echo "步骤 1: 检查仓库状态"
if [ -d ".git" ]; then
    echo "警告: 当前目录已经是 Git 仓库"
    read -p "是否继续？(y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "操作已取消"
        exit 0
    fi
else
    echo "初始化 Git 仓库..."
    git init
fi

echo ""
echo "步骤 2: 添加文件到 Git"
git add .

echo ""
echo "步骤 3: 提交更改"
git commit -m "初始提交: FnDepot 应用源仓库

包含以下应用:
- allinssl: AllinSSL SSL证书管理工具
- bark: Bark 推送通知服务端
- factorio: 异星工厂游戏服务器
- go-emby2openlist: Emby/Jellyfin 转 OpenList 工具
- moviepilot: 自动化媒体管理工具
- openlist: 现代化文件列表程序
- openlist-lite: OpenList 轻量版本
- quark-auto-save: 夸克网盘自动转存工具
- suwayomi: 漫画阅读服务器
- v2raya: v2ray 图形化代理客户端"

echo ""
echo "步骤 4: 添加远程仓库"
if git remote | grep -q origin; then
    echo "远程仓库 origin 已存在，更新 URL..."
    git remote set-url origin "$REPO_URL"
else
    echo "添加远程仓库 origin..."
    git remote add origin "$REPO_URL"
fi

echo ""
echo "步骤 5: 推送到 GitHub"
echo "请确保已在 GitHub 上创建了名为 'FnDepot' 的公开仓库"
echo "仓库URL: https://github.com/$GITHUB_USER/FnDepot"
echo ""
read -p "是否继续推送到 GitHub？(y/n): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "操作已取消"
    echo "您可以在稍后手动推送:"
    echo "  git push -u origin main"
    exit 0
fi

echo "推送到 GitHub..."
git push -u origin main

echo ""
echo "=== 部署完成 ==="
echo "仓库已成功推送到 GitHub:"
echo "  https://github.com/$GITHUB_USER/FnDepot"
echo ""
echo "下一步:"
echo "1. 访问上述 URL 确认仓库内容"
echo "2. 在 FnDepot 客户端中添加此源:"
echo "   https://github.com/$GITHUB_USER/FnDepot"
echo "3. 测试应用安装和更新功能"
echo ""
echo "维护提示:"
echo "- 更新应用: 修改文件后运行 'git add . && git commit -m \"更新描述\" && git push'"
echo "- 添加新应用: 创建目录并更新 fnpack.json"
echo "- 删除应用: 删除目录并从 fnpack.json 移除对应条目"