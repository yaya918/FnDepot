<<<<<<< HEAD
# FnDepot 应用源仓库

这是一个符合 FnDepot 第三方商店上架规范的应用源仓库。

## 仓库规范

- **仓库名称**: FnDepot（大小写敏感）
- **可见性**: Public（公开仓库）
- **默认分支**: main
- **托管平台**: GitHub

## 目录结构

```
FnDepot/
├── fnpack.json               # 全局元数据索引文件
├── allinssl/                 # AllinSSL 应用
│   ├── ICON.PNG             # 应用图标
│   ├── allinssl.fpk         # 安装包
│   ├── README.md            # 应用详情文档
│   └── Preview/             # 预览图目录
├── bark/                     # Bark Server 应用
│   ├── ICON.PNG
│   ├── bark.fpk
│   ├── README.md
│   └── Preview/
├── factorio/                 # 异星工厂服务器
│   ├── ICON.PNG
│   ├── factorio.fpk
│   ├── README.md
│   └── Preview/
├── go-emby2openlist/         # Go Emby2OpenList
│   ├── ICON.PNG
│   ├── go-emby2openlist.fpk
│   ├── README.md
│   └── Preview/
├── moviepilot/               # MoviePilot
│   ├── ICON.PNG
│   ├── moviepilot.fpk
│   ├── README.md
│   └── Preview/
├── openlist/                 # OpenList
│   ├── ICON.PNG
│   ├── openlist.fpk
│   ├── README.md
│   └── Preview/
├── openlist-lite/            # OpenList Lite
│   ├── ICON.PNG
│   ├── openlist-lite.fpk
│   ├── README.md
│   └── Preview/
├── quark-auto-save/          # 夸克网盘自动转存
│   ├── ICON.PNG
│   ├── quark-auto-save.fpk
│   ├── README.md
│   └── Preview/
├── suwayomi/                 # Suwayomi Server
│   ├── ICON.PNG
│   ├── suwayomi.fpk
│   ├── README.md
│   └── Preview/
└── v2raya/                   # v2rayA
    ├── ICON.PNG
    ├── v2raya.fpk
    ├── README.md
    └── Preview/
```

## 包含的应用

1. **allinssl** - AllinSSL SSL证书管理工具
2. **bark** - Bark 推送通知服务端
3. **factorio** - 异星工厂游戏服务器
4. **go-emby2openlist** - Emby/Jellyfin 转 OpenList 工具
5. **moviepilot** - 自动化媒体管理工具
6. **openlist** - 现代化文件列表程序
7. **openlist-lite** - OpenList 轻量版本
8. **quark-auto-save** - 夸克网盘自动转存工具
9. **suwayomi** - 漫画阅读服务器
10. **v2raya** - v2ray 图形化代理客户端

## 部署到 GitHub

### 步骤 1: 创建 GitHub 仓库
1. 登录 GitHub
2. 点击 "New repository"
3. 仓库名称填写: `FnDepot`（必须完全一致）
4. 描述: "FnDepot 第三方应用源"
5. 选择 Public（公开）
6. 不初始化 README、.gitignore 或 license
7. 点击 "Create repository"

### 步骤 2: 上传文件
```bash
# 克隆空仓库
git clone https://github.com/你的用户名/FnDepot.git
cd FnDepot

# 复制所有文件到仓库
cp -r /vol1/1000/FnDepot/* .

# 添加文件到 Git
git add .

# 提交更改
git commit -m "初始提交: 添加10个FnDepot应用"

# 推送到 GitHub
git push origin main
```

### 步骤 3: 验证仓库
1. 访问 `https://github.com/你的用户名/FnDepot`
2. 确认文件结构正确
3. 确认 `fnpack.json` 文件可访问
4. 确认所有应用目录结构完整

## 维护和更新

### 添加新应用
1. 在仓库根目录创建新的应用目录（使用小写字母、数字和连字符）
2. 添加必要的文件：ICON.PNG、{app_name}.fpk、README.md
3. 在 `fnpack.json` 中添加应用元数据
4. 提交并推送更改

### 更新现有应用
1. 替换应用目录中的 .fpk 文件
2. 更新 `fnpack.json` 中的 version 字段
3. 在 history 字段中添加版本更新记录
4. 更新 README.md 文档（如果需要）
5. 提交并推送更改

### 删除应用
1. 删除应用目录
2. 从 `fnpack.json` 中移除对应的条目
3. 提交并推送更改

## 注意事项

1. **文件名规范**:
   - 应用图标必须命名为 `ICON.PNG`（全大写）
   - 安装包必须命名为 `{app_name}.fpk`
   - 预览图按数字顺序命名：01.png、02.jpg 等

2. **元数据要求**:
   - `fnpack.json` 必须包含所有应用的完整信息
   - 版本号建议遵循 SemVer 规范
   - 所有必填字段必须完整

3. **文件大小**:
   - 小于 100MB 的 .fpk 文件直接包含在仓库中
   - 大于 100MB 的 .fpk 文件需要通过 Release 发布

4. **法律合规**:
   - 确保应用不包含恶意代码
   - 遵守相关版权和许可证要求
   - 在文档中明确说明应用用途和限制

## 技术支持

如果在部署或维护过程中遇到问题，请参考：
- [FnDepot 应用源构建规范](https://github.com/fndepot/docs)
- GitHub 官方文档
- Git 使用指南

## 许可证

本仓库中的各个应用遵循其各自的许可证。请查看每个应用目录中的 LICENSE 文件或 README.md 中的许可证信息。
=======
# FnDepot
>>>>>>> 94ed23df3be6ef116c427d8b259af610b2a353c9
