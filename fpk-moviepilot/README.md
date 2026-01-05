# MoviePilot

MoviePilot 是一个基于 NAStool 部分代码重新设计的自动化媒体管理工具，专注于自动化核心需求，减少问题同时更易于扩展和维护。

## 功能特性

- **媒体识别**: 自动识别电影、电视剧信息
- **自动下载**: 支持多种下载器集成
- **媒体整理**: 自动重命名和整理媒体文件
- **媒体服务器同步**: 支持 Plex、Emby、Jellyfin 同步
- **订阅管理**: 支持 RSS 订阅和自动追剧
- **消息通知**: 支持多种通知方式

## 安装要求

- 系统架构: x86_64
- 运行环境: Linux
- 端口: 13000
- 依赖: Python 3.12, Node.js v22

## 使用方法

1. 安装应用后，通过浏览器访问 `http://<你的NAS IP>:13000`
2. 完成初始配置向导
3. 配置媒体库路径和下载器
4. 添加订阅或手动搜索下载
5. 配置媒体服务器同步

## 主要配置

- **下载器**: 支持 qBittorrent、Transmission 等
- **媒体服务器**: 支持 Plex、Emby、Jellyfin
- **消息通知**: 支持 Telegram、微信、Bark 等
- **索引器**: 支持多种 PT 站和公开站

## 注意事项

- 需要配置正确的文件系统权限
- 建议使用 SSD 缓存提升性能
- 定期备份配置和数据库
- 关注官方更新，及时升级版本

## 技术支持

- 项目主页: https://github.com/jxxghp/MoviePilot
- 官方 Wiki: https://wiki.movie-pilot.org
- 问题反馈: https://github.com/jxxghp/MoviePilot/issues

## 版本历史

- v2.8.8-1: 飞牛 NAS 适配版本
- v2.8.8: 主要功能更新和 Bug 修复
