# FnDepot 仓库检查清单

## 仓库基本信息
- [x] 仓库名称: FnDepot（大小写敏感）
- [x] 目录结构符合规范
- [x] 包含 fnpack.json 文件
- [x] 每个应用有独立目录

## 应用列表（共10个）
- [x] allinssl
- [x] bark
- [x] factorio
- [x] go-emby2openlist
- [x] moviepilot
- [x] openlist
- [x] openlist-lite
- [x] quark-auto-save
- [x] suwayomi
- [x] v2raya

## 每个应用的检查项

### 通用要求
- [x] 目录名使用小写字母、数字和连字符
- [x] 包含 ICON.PNG 文件（全大写）
- [x] 包含 {app_name}.fpk 文件
- [x] 包含 README.md 文档
- [x] 包含 Preview/ 目录

### allinssl
- [x] 目录名: allinssl
- [x] 文件: allinssl.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### bark
- [x] 目录名: bark
- [x] 文件: bark.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### factorio
- [x] 目录名: factorio
- [x] 文件: factorio.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### go-emby2openlist
- [x] 目录名: go-emby2openlist
- [x] 文件: go-emby2openlist.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### moviepilot
- [x] 目录名: moviepilot
- [x] 文件: moviepilot.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### openlist
- [x] 目录名: openlist
- [x] 文件: openlist.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### openlist-lite
- [x] 目录名: openlist-lite
- [x] 文件: openlist-lite.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### quark-auto-save
- [x] 目录名: quark-auto-save
- [x] 文件: quark-auto-save.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### suwayomi
- [x] 目录名: suwayomi
- [x] 文件: suwayomi.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

### v2raya
- [x] 目录名: v2raya
- [x] 文件: v2raya.fpk
- [x] 图标: ICON.PNG, ICON_256.PNG
- [x] fnpack.json 条目: 完整
- [x] README.md: 完整

## fnpack.json 检查
- [x] 文件格式正确（JSON）
- [x] 包含所有10个应用
- [x] 每个应用有完整的必填字段
- [x] display_name: 有值
- [x] version: 有值
- [x] desc: 有值，支持换行
- [x] labels: 有值，逗号分隔
- [x] author: 有值
- [x] author_url: 有值，HTTP/HTTPS链接
- [x] bug_report_url: 有值，HTTP/HTTPS链接
- [x] install_type: "系统空间"
- [x] size: 有值，数字格式
- [x] history: 有值，包含版本记录

## 文件大小检查
- [x] allinssl.fpk: 57KB (0.06MB) ✓
- [x] bark.fpk: 5.6MB ✓
- [x] factorio.fpk: 86MB ✓
- [x] go-emby2openlist.fpk: 124KB (0.12MB) ✓
- [x] moviepilot.fpk: 85MB ✓
- [x] openlist.fpk: 49MB ✓
- [x] openlist-lite.fpk: 28MB ✓
- [x] quark-auto-save.fpk: 132KB (0.13MB) ✓
- [x] suwayomi.fpk: 310MB ✓（建议通过Release发布）
- [x] v2raya.fpk: 30KB (0.03MB) ✓

## 部署准备
- [x] 创建部署脚本: deploy_to_github.sh
- [x] 创建使用说明: README.md
- [x] 创建检查清单: CHECKLIST.md
- [x] 所有文件权限正确

## 注意事项
1. suwayomi.fpk 文件大小为 310MB，超过 100MB 限制
   - 建议：通过 GitHub Release 发布此文件
   - 替代方案：在 fnpack.json 中设置 download_url 字段

2. Preview 目录目前只有占位符文件
   - 实际发布前需要添加真实的预览截图
   - 截图要求：清晰展示应用界面和功能

3. 所有应用都标记为 "系统空间" 安装类型
   - 根据实际需求可调整为 "存储空间"

## 下一步操作
1. 在 GitHub 上创建名为 "FnDepot" 的公开仓库
2. 运行部署脚本: `./deploy_to_github.sh <你的GitHub用户名>`
3. 验证仓库内容可访问
4. 在 FnDepot 客户端中添加此源进行测试
5. 根据测试结果进行必要的调整