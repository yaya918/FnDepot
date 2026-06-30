# FnDepot 应用源-yaya
最后更新: 2026-06-30

## 应用清单

| 应用名称 | 版本号 | 开发者/GitHub仓库 | 备注 |
|---------|--------|------------------|------|
| Bark Server | 1.0.0 | Finb/https://github.com/Finb | 推送通知服务端（和商店版本一样） |
| 异星工厂服务器 | 2.0.72 | Wube Software/https://www.factorio.com | 自动化工厂游戏服务器 |
| 夸克网盘自动转存 | 1.0.0 | Cp0204/https://github.com/Cp0204/quark-auto-save | 网盘自动转存工具（Docker应用） |
| Suwayomi Server | v2.1.1867-1 | Suwayomi/https://github.com/Suwayomi | 漫画阅读服务器 |
| 小米相册同步器 | 0.10.0 | Coooolfan/https://github.com/Coooolfan/XiaomiAlbumSyncer | 小米云服务相册/录音备份工具 |
| iCloud-Photos | 2.0.3-2 | yaya/https://github.com/yaya918 | iCloud照片下载工具（修复了因上游更新引起的安装失败问题，提高大文件下载稳定性） |
| Scrypted | 0.144.2 | koush/https://github.com/koush/scrypted | 智能家居视频集成平台和NVR（和商店版本一样） |
| OVS 网桥 | 1.1.3 | yaya/https://github.com/yaya918 | 基于 Open vSwitch 的网口桥接工具，支持健康检测（x86+ARM） |
| RustDesk Server | 2.9.2-10 | rustdesk/https://github.com/rustdesk/rustdesk | 开源远程桌面服务器（x86+ARM 统一版本号） |

---

# FnDepot 应用源仓库

这是一个符合 FnDepot 第三方商店上架规范的应用源仓库。本仓库所有应用均采用应用默认权限运行，如需root权限会注明（可通过ssh登录使用ps -ef|grep {应用关键字}进行查询）。

## 仓库规范

- **仓库名称**: FnDepot（大小写敏感）
- **可见性**: Public（公开仓库）
- **默认分支**: main
- **托管平台**: GitHub


## 包含的应用

2. **bark** - Bark 推送通知服务端
3. **factorio** - 异星工厂游戏服务器
4. **quark-auto-save** - 夸克网盘自动转存工具
5. **suwayomi** - 漫画阅读服务器
6. **xiaomi-album-syncer** - 小米相册同步器
7. **icloud-photos** - iCloud照片下载工具
8. **scrypted** - 智能家居视频集成平台和NVR
9. **ovs-switch-fn** - OVS 网桥（OVSSwitch，基于 Open vSwitch）
10. **rustdesk-server** - RustDesk 远程桌面服务器


## 关于作者

**芽芽打包匠** - FnDepot 应用源维护者

欢迎关注我的社交媒体账号，获取更多飞牛 NAS 应用和教程：

- **B站（哔哩哔哩）**: [芽芽ol](https://space.bilibili.com/490461815) - 分享飞牛 NAS 应用教程、使用技巧和视频演示
- **微信公众号**: **芽芽打包匠** - 获取最新应用更新、技术文章和专属脚本工具

> 💡 **提示**: 飞牛 SSL 证书部署脚本等专属工具可通过关注公众号或B站获取

## 技术支持

如果在部署或维护过程中遇到问题，请参考：
- [FnDepot 应用源构建规范](https://github.com/fndepot/docs)
- GitHub 官方文档
- Git 使用指南

## 许可证

本仓库中的各个应用遵循其各自的许可证。请查看每个应用目录中的 LICENSE 文件或 README.md 中的许可证信息。
